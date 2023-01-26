//////////////////////////////////
// Redux Module from freeCodeCamp.       //
// Not recommended to self-run  //
//////////////////////////////////

/* Create a Redux Store */

Redux is a state management framework that can be used with a number of different web technologies, including React.

In Redux, there is a single state object that's responsible for the entire state of your application. 
This means if you had a React app with ten components, and each component had its own local state, 
the entire state of your app would be defined by a single state object housed in the Redux store. 
This is the first important principle to understand when learning Redux: the Redux store is the single source of truth when it comes to application state.

This also means that any time any piece of your app wants to update state, it must do so through the Redux store. 
The unidirectional data flow makes it easier to track state management in your app.

The Redux store is an object which holds and manages application state. There is a method called createStore() on the Redux object, which you use to create the Redux store. 
const reducer = (state = 5) => {
    return state;
  }
  
  // Redux methods are available from a Redux object
  // For example: Redux.createStore()
  
  const store = Redux.createStore(reducer)

/* Get State from the Redux Store */
// The Redux store object provides several methods that allow you to interact with it. 
// For example, you can retrieve the current state held in the Redux store object with the getState() method.
const store = Redux.createStore(
    (state = 5) => state
  );
  
  // Change code below this line
  const currentState = store.getState()
