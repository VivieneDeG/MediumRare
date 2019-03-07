import React from 'react';
import { Link } from 'react-router-dom';

class PostShow extends React.Component {
  componentDidMount() {
    this.props.fetchPost(this.props.match.params.postId);
  }

  componentDidUpdate(prevProps) {
    if (prevProps.post.id != this.props.match.params.postId) {
      this.props.fetchPost(this.props.match.params.postId);
    }
  }

  render() {
    const { post } = this.props;

    return (
      <div className="post-show-container">
        <header className="post-show-header">
          <h1 className="post-show-title">{post.title}</h1>
          <Link to={`/users/${post.authorId}`}>
            <p className="post-show-author">{post.author}</p>
          </Link>
        </header>
        <div className="post-show-page">
          <pre className="post-show-body">{post.body}</pre>
        </div>
      </div>
    )
  }
}

export default PostShow;