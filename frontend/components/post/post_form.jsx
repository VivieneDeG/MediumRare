import React from 'react';

class PostForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = this.props.post;
  }
  
  update(field) {
    return (e) => {
      this.setState({[field]: e.currentTarget.value});
    }
  }
  
  handleSubmit() {
    return (e) => {
      e.preventDefault();
      const post = Object.assign({}, this.state);
      this.props.processForm(post).then(() => this.props.history.push(`/users/${this.props.currentUserId}`));
      // redirect to post show
    }
  }

  render() {
    return (
      <div className="post-form-container">
        <form className="post-form" onSubmit={this.handleSubmit()}>
          <input className="post-form-submit"
            type="submit"
            value={this.props.formType} />

          <label className="post-form-title">Title
            <input type="text"
              value={this.state.title}
              onChange={this.update('title')} />
          </label>

          <label className="post-form-body">Body
            <textarea
              value={this.state.body}
              onChange={this.update('body')} />
          </label>
        </form>
      </div>
    )
  }
}

export default PostForm;