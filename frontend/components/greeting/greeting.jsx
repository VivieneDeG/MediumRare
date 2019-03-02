import React from 'react';
import { Link } from 'react-router-dom';

const Greeting = ({currentUser, logout}) => {
  console.log(currentUser);
  if (!currentUser) {
    return (
      <div className="nav-bar-right">
        <Link to="/login" className="nav-bar-login">Log In</Link>
        <br />
        <Link to="/signup" className="nav-bar-signup">Sign Up</Link>
      </div>
    )
  } else {
    return (
      <div className="nav-bar-right">
        <h3>Hey {currentUser.name}, what's your big idea today?</h3>
        <button onClick={logout}>Log Out</button>
      </div>
    )
  }
}

export default Greeting;