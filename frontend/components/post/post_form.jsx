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
  
  handleDelete() {
    return (e) => {
      e.preventDefault();
      this.props.deletePost(this.state.id)
        .then(() => this.props.history.push(`/users/${this.props.currentUserId}`));
    }
  }
  
  handleSubmit() {
    return (e) => {
      e.preventDefault();
      const post = Object.assign({}, this.state);
      this.props.processForm(post)
        .then(() => this.props.history.push(`/users/${this.props.currentUserId}`));
    }
  }

  render() {
    return (
      <div className="post-form-container">
        <form className="post-form" onSubmit={this.handleSubmit()}>

          <div className="post-form-buttons">
            {this.props.formType == "Update Story" &&
            <button className="post-form-delete"
              onClick={this.handleDelete()}>Delete Story</button>
            }
              
            <input className="post-form-submit"
              type="submit"
              value={this.props.formType} />
          </div>
          
          <input type="text"
            className="post-form-title"
            placeholder="Title"
            value={this.state.title}
            onChange={this.update('title')} />
            
          <input type="text"
            className="post-form-image"
            placeholder="Image URL (optional)"
            value={this.state.image}
            onChange={this.update('image')} />
            
          <textarea className="post-form-body"
            placeholder="Tell your story..."
            value={this.state.body}
            onChange={this.update('body')} />
          
        </form>
      </div>
    )
  }
}

export default PostForm;