import React, { Component } from 'react';
import HeaderContainer from './HeaderContainer';
import SignupContainer from './SignupContainer';

class RootContainer extends Component {
  render() {
    return (
      <div>
        <HeaderContainer />
        <h1>Root Container</h1>
        <SignupContainer />
      </div>
    );
  }
}

export default RootContainer;
