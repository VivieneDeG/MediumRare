import React from 'react';

const Greeting = ({currentUser, logout, openModal}) => {
  if (!currentUser) {
    return (
      <div className="nav-bar-right">
        <button onClick={() => openModal('Log In')}>Log In</button>
        <button onClick={() => openModal('Sign Up')}>Sign Up</button>
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