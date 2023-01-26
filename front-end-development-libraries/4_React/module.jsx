// React is an Open Source view library created and maintained by Facebook. It's a great tool to render the User Interface (UI) of modern web applications.
// React uses a syntax extension of JavaScript called JSX that allows you to write HTML directly within JavaScript. This has several benefits. It lets you use the full programmatic power of JavaScript within HTML, and helps to keep your code readable. For the most part, JSX is similar to the HTML that you have already learned, however there are a few key differences that will be covered throughout these challenges.
// For instance, because JSX is a syntactic extension of JavaScript, you can actually write JavaScript directly within JSX. To do this, you simply include the code you want to be treated as JavaScript within curly braces: { 'this is treated as JavaScript code' }. Keep this in mind, since it's used in several future challenges.
// However, because JSX is not valid JavaScript, JSX code must be compiled into JavaScript. The transpiler Babel is a popular tool for this process. For your convenience, it's already added behind the scenes for these challenges. If you happen to write syntactically invalid JSX, you will see the first test in these challenges fail.
// It's worth noting that under the hood the challenges are calling ReactDOM.render(JSX, document.getElementById('root')). This function call is what places your JSX into React's own lightweight representation of the DOM. React then uses snapshots of its own DOM to optimize updating only specific parts of the actual DOM.

const JSX = <h1></h1>;

// One important thing to know about nested JSX is that it must return a single element.
// This one parent element would wrap all of the other levels of nested elements.
// For instance, several JSX elements written as siblings with no parent wrapper element will not transpile.

const JSX2 = <div>
<p>Paragraph One</p>
<p>Paragraph Two</p>
<p>Paragraph Three</p>
</div>;

const JSX2Wrong = <p>Paragraph One</p>
<p>Paragraph Two</p>
<p>Paragraph Three</p>;

// To put comments inside JSX, you use the syntax {/* */} to wrap around the comment text.

const JSXComment = (
    <div>
    {/* Try to run this! */}
      <h1>This is a block of JSX</h1>
      <p>Here's a subtitle</p>
    </div>
  );
  

//   ReactDOM offers a simple method to render React elements to the DOM which looks like this: ReactDOM.render(componentToRender, targetNode), 
// where the first argument is the React element or component that you want to render, and the second argument is the DOM node that you want to render the component to.
// ReactDOM.render() must be called after the JSX element declarations, just like how you must declare variables before using them.
ReactDOM.render(
    JSX2, document.getElementById('<any_id>')
  );

// in JSX is that you can no longer use the word class to define HTML classes. This is because class is a reserved word in JavaScript. Instead, JSX uses className.
const JSXClassName = (
    <div className="myDiv">
      <h1>Add a class to this div</h1>
    </div>
  );

// Another important way in which JSX differs from HTML is in the idea of the self-closing tag.
// In JSX, the rules are a little different. Any JSX element can be written with a self-closing tag, and every element must be closed. 
// The line-break tag, for example, must always be written as <br /> in order to be valid JSX that can be transpiled. 
// A <div>, on the other hand, can be written as <div /> or <div></div>. The difference is that in the first syntax version there is no way to include anything in the <div />. 

// const JSXWrongSelfClose = (
//     <div>
//       <h2>Welcome to React!</h2> <br > <- not closed
//       <p>Be sure to close all tags!</p>
//       <hr > <- not closed
//     </div>
//   );

// There are two ways to create a React component. The first way is to use a JavaScript function. Defining a component in this way creates a stateless functional component. 
// Think of a stateless component as one that can receive data and render it, but does not manage or track changes to that data. 
// To create a component with a function, you simply write a JavaScript function that returns either JSX or null. 
// One important thing to note is that React requires your function name to begin with a capital letter. Here's an example of a stateless functional component that assigns an HTML class in JSX:

