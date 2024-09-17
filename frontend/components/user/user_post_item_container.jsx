import React from 'react';
import { Link } from 'react-router-dom';
import { connect } from 'react-redux';
import { deletePost } from '../../actions/post_actions';

const mapStateToProps = ({ session }) => ({
  currentUserId: session.id,
});

const mapDispatchToProps = dispatch => ({
  deletePost: id => dispatch(deletePost(id)),
});

class UserPostItem extends React.Component {
  handleDelete() {
    return (e) => {
      e.preventDefault();
      this.props.deletePost(this.props.post.id);
    }
  }

  render() {
    const { post, currentUserId } = this.props;
    return (
      <div className="user-post-container">
    
        <div className="user-post-heading">
          <div className="user-post-author">
            <Link to={`/users/${post.authorId}`} className="user-post-avatar">
              <i className="fa-solid fa-circle-user"></i>
            </Link>

            <p className="user-post-name">
              <Link to={`/users/${post.authorId}`}>{post.author}</Link>
            </p>
          </div>

          {currentUserId == post.authorId &&
            <div className="user-post-buttons">
              <Link to={`/posts/${post.id}/edit`}>
                <button className="user-post-update">Update</button>
              </Link>
              <button className="user-post-delete"
                onClick={this.handleDelete()}>Delete</button>
            </div>
          }
        </div>
    
        <div className="user-post-content">
          <Link to={`/posts/${post.id}`}>
            <h1 className="user-post-title">{post.title}</h1>
            <h2 className="user-post-preview">{post.body}</h2>
          </Link>
          {post.image &&
            <Link to={`/posts/${post.id}`}>
              <img className="user-post-img" src={`${post.image}`} />
            </Link>
          }
        </div>

      </div>
    )
  }
}

export default connect(mapStateToProps, mapDispatchToProps)(UserPostItem);