#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

# Creating a temp table just to put names into teams
echo -e "$($PSQL "CREATE TABLE temp(year int,round varchar(60),winner varchar(60),opponent varchar(60),winner_goals int,opponent_goals int)")"
echo -e "$($PSQL "\copy temp(year,round,winner,opponent,winner_goals,opponent_goals) FROM 'games.csv' DELIMITER ',' CSV HEADER")"
echo -e "$($PSQL "INSERT INTO teams(name) SELECT DISTINCT(winner) FROM temp ORDER BY winner ASC")"
echo -e "$($PSQL "INSERT INTO teams(name) SELECT DISTINCT(opponent) FROM temp ORDER BY opponent ASC ON CONFLICT DO NOTHING")"
echo -e "$($PSQL "DROP TABLE temp")"

# extracting data from games.csv
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != "year" ]]
  then

    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    
    INSERT_INTO_GAMES=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
    if [[ $INSERT_INTO_GAMES == "INSERT 0 1" ]]
    then
      echo Inserted 1
    fi
  fi
done

