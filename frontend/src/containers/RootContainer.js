import React, { Component } from 'react';
import HeaderContainer from './HeaderContainer';

class RootContainer extends Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div>
        <HeaderContainer />
        <h1>Root Container</h1>
      </div>
    );
  }
}

export default RootContainer;
