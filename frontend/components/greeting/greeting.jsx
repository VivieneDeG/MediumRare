import React from 'react';
import { Link } from 'react-router-dom';

class Greeting extends React.Component {
  render() {
    const { currentUser, logout } = this.props;
    if (!currentUser) {
      return (
        <>
          <Link to="/signup">Sign Up</Link>
          <br />
          <Link to="/login">Log In</Link>
        </>
      )
    } else {
      return (
        <>
          <h3>Hey {currentUser.name}, what's your big idea today?</h3>
          <button onClick={logout}>Log out</button>
        </>
      )
    }
  }
}

export default Greeting;