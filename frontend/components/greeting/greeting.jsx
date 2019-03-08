import React from 'react';
import { Link } from 'react-router-dom';

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
        <h3 className="nav-bar-name">
          {currentUser.name}
        </h3>

        <Link to={`/users/${currentUser.id}`} className="nav-bar-profile-link">
          <i className="fas fa-user-circle"></i>
        </Link>

        <Link to="/">
          <button className="logout-button" 
            onClick={logout}>Log Out</button>
        </Link>
      </div>
    )
  }
}

export default Greeting;