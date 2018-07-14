import React, { Component } from 'react';
import { GREY1 } from '../styles/colors';

const styles = {
  header: {
    // border-box includes margin and padding in the box sizing width calculation
    // otherwise it will add margin and padding to the box and it will outgrow the viewport
    // which makes it scroll
    overflow: 'auto',
    backgroundColor: GREY1,
    boxSizing: 'border-box',
    padding: '5px 50px 5px 50px',
    minHeight: '10vh',
    minWidth: '100vw',
  },
  pinLeft: {
    float: 'left',
  },
  pinRight: {
    marginLeft: 'auto',
    float: 'right',
  },
  linksContainer: {
    listStyle: 'none',
  },
};

class HeaderContainer extends Component {
  render() {
    return (
      <header style={styles.header}>
        <div style={styles.pinLeft}>
          <a>reddit-clone</a>
        </div>
        <nav style={styles.pinRight}>
          <ul style={styles.linksContainer}>
            <li><a>Link 1</a></li>
            <li><a>Link 2</a></li>
            <li><a>Link 3</a></li>
          </ul>
        </nav>
      </header>
    );
  }
}

export default HeaderContainer;
