const quote = [
    {
        author: 'Steve Jobs',
        text: 'The only way to do great work is to love what you do.'
    },
    {
        author: 'Abraham Lincoln',
        text: 'The best way to predict your future is to create it.'
    },
    {
        author: 'Wayne Gretzky',
        text: 'You miss 100% of the shots you don\'t take.'
    },
    {
        author: 'Franklin D. Roosevelt',
        text: 'The only thing we have to fear is fear itself.'
    },
    {
        author: 'Confucius',
        text: 'It does not matter how slowly you go as long as you do not stop.'
    },
    {
        author: 'Theodore Roosevelt',
        text: 'Believe you can and you\'re halfway there.'
    },
    {
        author: 'Thomas Edison',
        text: 'I have not failed. I\'ve just found 10,000 ways that won\'t work.'
    },
    {
        author: 'Albert Einstein',
        text: 'If you want to live a happy life, tie it to a goal, not to people or things.'
    },
    {
        author: 'Winston Churchill',
        text: 'Success is not final, failure is not fatal: It is the courage to continue that counts.'
    },
    {
        author: 'Nelson Mandela',
        text: 'The greatest glory in living lies not in never falling, but in rising every time we fall.'
    },
    {
        author: 'Henry David Thoreau',
        text: 'Go confidently in the direction of your dreams! Live the life you\'ve imagined.'
    },
    {
        author: 'Nelson Mandela',
        text: 'The greatest glory in living lies not in never falling, but in rising every time we fall.'
    },
    {
        author: 'Confucius',
        text: 'Life is really simple, but we insist on making it complicated.'
    },
    {
        author: 'Hans Christian Andersen',
        text: 'Life itself is the most wonderful fairy tale.'
    },
    {
        author: 'Steve Jobs',
        text: 'The only way to do great work is to love what you do.'
    },
    {
        author: 'Abraham Lincoln',
        text: 'The best way to predict your future is to create it.'
    },
    {
        author: 'Wayne Gretzky',
        text: 'You miss 100% of the shots you don\'t take.'
    },
    {
        author: 'Franklin D. Roosevelt',
        text: 'The only thing we have to fear is fear itself.'
    },
    {
        author: 'Confucius',
        text: 'It does not matter how slowly you go as long as you do not stop.'
    },
    {
        author: 'Theodore Roosevelt',
        text: 'Believe you can and you\'re halfway there.'
    }
];

const random = () => {
    return Math.floor(Math.random() * quote.length);
}

const getRandomColor = () => {
    const letters = "0123456789ABCDEF";
    let color = "#";

    for (var i = 0; i < 6; i++) color += letters[Math.floor(Math.random() * 16)];

    return color;
}

function generateQuote() {
    let i = random();
    let quoteText = quote[i].text;
    let quoteAuthor = quote[i].author;

    $('#text').html(quoteText);
    $('#author').html(quoteAuthor);

    const encodedText = encodeURIComponent(quoteText + ' Quote by ' + quoteAuthor);

    // Step 10: I can tweet the current quote by clicking on the #tweet-quote a element. This a element should include the "twitter.com/intent/tweet" path in its href attribute to tweet the current quote.
    $('#tweet-quote').attr('href', 'https://twitter.com/intent/tweet?text=' + encodedText);

    // Extra: Change colors
    $('body').css('background-color', getRandomColor);
}



// Step 6: On first load, my quote machine displays a random quote in the element with id="text"
$(document).ready(function () {

    // Step 7: On first load, my quote machine displays the random quote-s author in the element with id="author"
    generateQuote();

    // Step 8: When #new-quote button is clicked, my quote machine should replace a new quote and display it in the #text element
    // Step 9: My quote machine should fetch the new quote's author when the #new-quote button is clicked and display it in the #author element.
    $('#new-quote').click(generateQuote);
});











