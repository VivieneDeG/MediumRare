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
      <>
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
              <Link to={`/users/${post.authorId}`} className="post-show-author-avatar">
                <i className="fa-solid fa-circle-user"></i>
              </Link>
              <p className="post-show-author">
                <Link to={`/users/${post.authorId}`}>{post.author}</Link>
              </p>
            </div>
          </header>

          <div className="post-show-line-break" />

          {post.image &&
            <div className="post-show-img-container">
              <img src={`${post.image}`} />
            </div>
          }

          <pre className="post-show-body">{post.body}</pre>
        </div>

        <footer className="post-show-footer-container">
          <div className="post-show-footer">
            <Link to={`/users/${post.authorId}`} className="post-show-footer-avatar">
              <i className="fa-solid fa-circle-user"></i>
            </Link>
            <h3 className="post-show-footer-author">
              <Link to={`/users/${post.authorId}`}>Written by {post.author}</Link>
            </h3>
          </div>
        </footer>
      </>
    )
  }
}

export default PostShow;