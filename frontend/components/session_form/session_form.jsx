import React from 'react';

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      name: "",
      email: "",
      password: "",
    };
  }

  renderErrors () {
    const listErrors = this.props.errors.map((err, idx) => (
      <li key={idx}>{err}</li>
    ));
    return (
      <>
        <ul className="session-errors">
          {listErrors}
        </ul>
      </>
    )
  }

  update(field) {
    return (e) => {
      this.setState({[field]: e.currentTarget.value});
    }
  }

  demoLogin() {
    return (e) => {
      e.preventDefault();
      const demo = { email: "guest@demo.com", password: "watpassword" };
      this.props.formType === 'Log In' ? 
      this.props.processForm(demo) : this.props.login(demo);
    }
  }

  handleSubmit() {
    return (e) => {
      e.preventDefault();
      const user = Object.assign({}, this.state);
      this.props.processForm(user);
    }
  }

  render() {
    let nameField;
    if (this.props.formType === 'Sign Up') {
      nameField = (
        <>
          <label className="session-form-label">Your name
            <input type="text"
              value={this.state.name}
              onChange={this.update('name')} />
          </label>
        </>
      )
    } else {
      nameField = <></>
    }
    
    return (
      <div className="session-form-container">
        {this.props.header}

        <form onSubmit={this.handleSubmit()} className="session-form">
          {nameField}
          
          <label className="session-form-label">Your email
            <input type="text"
              value={this.state.email}
              onChange={this.update('email')} />
          </label>

          <label className="session-form-label">Your password
            <input type="password"
              value={this.state.password}
              onChange={this.update('password')} />
          </label>

          {this.renderErrors()}
          <input type="submit"
            value={this.props.formType}
            className="session-form-submit" />
        </form>

        <button onClick={this.demoLogin()} className="demo-button">Demo Log In</button>

        {this.props.link}
      </div> 
    )
  }
}

export default SessionForm;