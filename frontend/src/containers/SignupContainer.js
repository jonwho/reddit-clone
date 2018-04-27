import React, { Component } from 'react';
import SignupForm from '../components/shared/forms/SignupForm';

class SignupContainer extends Component {
  render() {
    return (
      <div>
        <h1>Signup Container</h1>
        <SignupForm />
      </div>
    );
  }
}

export default SignupContainer;
