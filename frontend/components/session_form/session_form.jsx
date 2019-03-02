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
        <br />
      </>
    )
  }

  update(field) {
    return (e) => {
      this.setState({[field]: e.currentTarget.value});
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
          <label>Your name
            <input type="text" value={this.state.name} onChange={this.update('name')} />
          </label>
          <br />
        </>
      )
    } else {
      nameField = <></>
    }

    // add demo user button after form
    
    return (
      <div className="session-form-container">
        {this.props.header}
        <br />

        <form onSubmit={this.handleSubmit()} className="session-form">
          {nameField}
          <label>Your email
            <input type="text" value={this.state.email} onChange={this.update('email')} />
          </label>
          <br />
          <label>Your password
            <input type="password" value={this.state.password} onChange={this.update('password')} />
          </label>
          <br />
          {this.renderErrors()}
          <input type="submit" value={this.props.formType} />
        </form>

        <br />
        {this.props.link}
      </div> 
    )
  }
}

export default SessionForm;