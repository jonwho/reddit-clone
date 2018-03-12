import React, { Component } from 'react';
import { WHITE } from '../styles/colors';

const styles = {
  header: {
    minHeight: '10vh',
    minWidth: '100%',
    border: '1px solid red'
  },
  flexContainer: {
    display: 'flex',
    flexDirection: 'row',
  },
  ulNav: {
    padding: 0,
    listStyle: 'none',
  },
  rightLinks: {
    marginLeft: 'auto',
  },
};

class NavContainer extends Component {
  render() {
    return (
      <header style={{ ...styles.flexContainer, ...styles.header }}>
        <ul style={{ ...styles.flexContainer, ...styles.ulNav }}>
          <li>Nav Container</li>
        </ul>
        <ul style={{ ...styles.flexContainer, ...styles.ulNav, ...styles.rightLinks  }}>
          <li>Link 1</li>
          <li>Link 2</li>
          <li>Link 3</li>
        </ul>
      </header>
    );
  }
}

export default NavContainer;
