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
      this.props.processForm(post);
      // redirect to post show
    }
  }

  render() {
    return (
      <div>
        <form onSubmit={this.handleSubmit()}>
          <input type="submit"
            value={this.props.formType} />

          <label> Title <input type="text"
              value={this.state.title}
              onChange={this.update('title')} />
          </label>

          <label> Body <input type="text"
              value={this.state.body}
              onChange={this.update('body')} />
          </label>
        </form>
      </div>
    )
  }
}

export default PostForm;