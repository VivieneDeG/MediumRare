import React from 'react';

const Greeting = ({currentUser, logout, openModal}) => {
  if (!currentUser) {
    return (
      <div className="nav-bar-right">
        <button className="login-button"
          onClick={() => openModal('Log In')}>Log In</button>
        <button className="signup-button"
          onClick={() => openModal('Sign Up')}>Get Started</button>
      </div>
    )
  } else {
    return (
      <div className="nav-bar-right">
        <h3 className="nav-bar-msg">
          Hey {currentUser.name}, what's your big idea today?</h3>
        <button className="logout-button" 
          onClick={logout}>Log Out</button>
      </div>
    )
  }
}

export default Greeting;