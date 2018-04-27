import React, { Component } from 'react';
import RootContainer from './containers/RootContainer';
import { Provider } from 'react-redux';
// import store from './store.js';

const store = {};

class App extends Component {
  render() {
    return (
      <Provider store={store}>
        <RootContainer />
      </Provider>
    );
  }
}

export default App;
