import React from 'react';
import { Link } from 'react-router-dom';
import GreetingContainer from './_greeting_container';

const Header = () => (
  <header>
    <div className="nav-bar-container">
      <nav className="nav-bar">
        <Link to="/" className="header-link">
          <h1>MediumRare</h1>
        </Link>
        <GreetingContainer />
      </nav>
    </div>
  </header>
);

export default Header;