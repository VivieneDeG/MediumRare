import React from 'react';
import { Route, Link } from 'react-router-dom';
import { AuthRoute } from '../util/route_util';
import GreetingContainer from './greeting/greeting_container';
import LoginFormContainer from './session_form/login_form_container';
import SignupFormContainer from './session_form/signup_form_container';


const App = () => (
  <>
    <header>
      <div className="nav-bar">
        <Link to="/" className="header-link">
          <h1>MediumRare</h1>
        </Link>
        <GreetingContainer />
      </div>
    </header>

    <AuthRoute exact path="/login" component={LoginFormContainer} />
    <AuthRoute exact path="/signup" component={SignupFormContainer} />
  </>
);

export default App;