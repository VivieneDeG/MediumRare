import React from 'react';
import { connect } from 'react-redux';
import { login } from '../../actions/session_actions';
import { Link } from 'react-router-dom';
import SessionForm from './session_form';

const mapStateToProps = state => ({
  errors: state.errors.session,
  formType: 'Log In',
  header: <h2 className="session-header">Welcome back.</h2>,
  link: <p>No account? <Link to='/signup' className="other-form-link">Sign up</Link></p>,
});

const mapDispatchToProps = dispatch => ({
  processForm: user => dispatch(login(user)),
});

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);