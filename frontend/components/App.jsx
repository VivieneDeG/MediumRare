import React from 'react';
import { Route, Redirect, Link, Switch } from 'react-router-dom';
import Modal from './modal/modal';
import GreetingContainer from './greeting/greeting_container';
import UserShowContainer from './user/user_show_container';

const App = () => (
  <>
    <Modal />
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

    <Switch>
      <Route path="/users/:userId" component={UserShowContainer} />
      <Route exact path="/" />
      <Redirect to="/" />
    </Switch>
  </>
);

export default App;