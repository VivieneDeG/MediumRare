import React from 'react';
import { connect } from 'react-redux';
import { signup } from '../../actions/session_actions';
import { openModal, closeModal } from '../../actions/modal_actions';
import SessionForm from './session_form';

const mapStateToProps = state => ({
  errors: state.errors.session,
  formType: 'Sign Up',
  header: <h2 className="session-header">Join MediumRare.</h2>,
  footer: <p>Already have an account?</p>,
});

const mapDispatchToProps = dispatch => ({
  processForm: user => dispatch(signup(user)),
  login: user => dispatch(login(user)),
  otherForm: (
    <button onClick={() => dispatch(openModal('Log In'))}>
      Log in
    </button>
  ),
  closeModal: () => dispatch(closeModal()),
});

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);