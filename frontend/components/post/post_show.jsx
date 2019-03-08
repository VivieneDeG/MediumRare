import React from 'react';
import { Link } from 'react-router-dom';

class PostShow extends React.Component {
  componentDidMount() {
    this.props.fetchPost(this.props.match.params.postId);
    window.scrollTo(0, 0);
  }

  componentDidUpdate(prevProps) {
    if (prevProps.post.id != this.props.match.params.postId) {
      this.props.fetchPost(this.props.match.params.postId);
    }
    window.scrollTo(0, 0);
  }

  render() {
    const { post, currentUserId } = this.props;

    return (
      <div className="post-show-container">
        <header className="post-show-header">
          {currentUserId == post.authorId &&
            <div className="post-show-buttons">
              <button className="post-show-update">
                <Link to={`/posts/${post.id}/edit`}>Update</Link>
              </button>
            </div>
          }

          <h1 className="post-show-title">{post.title}</h1>
          <div className="post-show-author-div">
            <Link to={`/users/${post.authorId}`} className="post-show-author-pic">
              <i className="fas fa-user-circle"></i>
            </Link>
            <p className="post-show-author">
              <Link to={`/users/${post.authorId}`}>{post.author}</Link>
            </p>
          </div>
        </header>

        <div className="post-show-img-container">
          <img src="https://images.unsplash.com/photo-1519068737630-e5db30e12e42?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80" />
        </div>

        <div className="post-show-page">
          <pre className="post-show-body">{post.body}</pre>
        </div>
      </div>
    )
  }
}

export default PostShow;