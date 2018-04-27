import React, { Component } from 'react';

class SignupForm extends Component {
  constructor(props) {
    super(props);

    this.state = {
      username: '',
      password: '',
    };

    this.onChange = this.onChange.bind(this);
    this.onSubmit = this.onSubmit.bind(this);
  }

  onChange(event) {
    this.setState({ [event.target.name]: event.target.value });
  }

  onSubmit(event) {
    event.preventDefault();

    const data = {
      username: this.state.username,
      password: this.state.password,
    }

    fetch('http://localhost:3000/v1/users.json', {
      method: 'POST',
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
      body: JSON.stringify(data),
    })
      .then(res => res.json())
      .then(data => console.log(data));
  }

  render() {
    return (
      <div>
        <h1>Signup Form</h1>
        <form onSubmit={this.onSubmit}>
          <label>Username</label>
          <input type="text" name="username" onChange={this.onChange} />

          <label>password</label>
          <input type="password" name="password" onChange={this.onChange} />

          <button type="submit">Signup</button>
        </form>
      </div>
    );
  }
}

export default SignupForm;
