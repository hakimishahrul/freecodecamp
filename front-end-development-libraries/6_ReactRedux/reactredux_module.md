# React and Redux
*Not-recommended to self-run*

## 1. Getting started with React Redux
This series of challenges introduces how to use Redux with React. First, here's a review of some of the key principles of each technology. React is a view library that you provide with data, then it renders the view in an efficient, predictable way. Redux is a state management framework that you can use to simplify the management of your application's state. Typically, in a React Redux app, you create a single Redux store that manages the state of your entire app. Your React components subscribe to only the pieces of data in the store that are relevant to their role. Then, you dispatch actions directly from React components, which then trigger store updates.

Although React components can manage their own state locally, when you have a complex app, it's generally better to keep the app state in a single location with Redux. There are exceptions when individual components may have local state specific only to them. Finally, because Redux is not designed to work with React out of the box, you need to use the `react-redux` package. It provides a way for you to pass Redux `state` and `dispatch` to your React components as `props`.

Over the next few challenges, first, you'll create a simple React component which allows you to input new text messages. These are added to an array that's displayed in the view. This should be a nice review of what you learned in the React lessons. Next, you'll create a Redux store and actions that manage the state of the messages array. Finally, you'll use `react-redux` to connect the Redux store with your component, thereby extracting the local state into the Redux store.
```jsx
class DisplayMessages extends React.Component {
  
  // Creating constructor and initializing two states: input and messages
  constructor(props) {
    super(props);

    this.state = {
      input: '',
      messages: []
    }
  }
  
  render() {
    return <div />
  }
};
```
---

## 2. Manage State Locally First
Here you'll finish creating the `DisplayMessages` component.
```js 

class DisplayMessages extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      input: '',
      messages: []
    }

    this.submitMessage = this.submitMessage.bind(this);
    this.handleChange = this.handleChange.bind(this);
  }
  // Add handleChange() and submitMessage() methods here
  // Adding handleChange and submitMessage methods here
  handleChange(event) {
    this.setState({
      input: event.target.value,
      messages: this.state.messages
    });
  }

  submitMessage() {
    this.setState({

        // Remember that Redux state is immutable
      messages: [...this.state.messages, this.state.input],
      input: ''
    });

  }

  render() {
    return (
      <div>
        <h2>Type in a new Message:</h2>
        
        <input type="text" onChange={this.handleChange} value={this.state.input} />
        <button onClick={this.submitMessage}>Submit</button>
        <ul>
          {this.state.messages.map((x, i) => {
            return <li key={i}>{x}</li>
          })}
        </ul>
      </div>
    );
  }
};
```
---

## 3. Extract State Logic to Redux
Now that you finished the React component, you need to move the logic it's performing locally in its `state` into Redux. This is the first step to connect the simple React app to Redux. The only functionality your app has is to add new messages from the user to an unordered list. The example is simple in order to demonstrate how React and Redux work together.

First, define an action type `ADD` and set it to a const `ADD`. Next, define an action creator `addMessage()` which creates the action to add a message. You'll need to pass a `message` to this action creator and include the message in the returned `action`.

Then create a reducer called `messageReducer()` that handles the state for the messages. The initial state should equal an empty array. This reducer should add a message to the array of messages held in state, or return the current state. Finally, create your Redux store and pass it the reducer.
```js

```


