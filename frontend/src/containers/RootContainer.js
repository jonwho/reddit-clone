import React, { Component } from 'react';
import NavContainer from './NavContainer';

class RootContainer extends Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div>
        <NavContainer />
        <h1>Root Container</h1>
      </div>
    );
  }
}

export default RootContainer;
