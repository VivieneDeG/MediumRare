import React from 'react';
import { Link } from 'react-router-dom';

const Greeting = ({currentUser, logout}) => {
  console.log(currentUser);
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

export default Greeting;