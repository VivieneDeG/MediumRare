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
          <div className="user-post-heading-left">
            <Link to={`/users/${post.authorId}`} className="user-post-pic">
              <i className="fas fa-user-circle"></i>
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
    
    
        <Link to={`/posts/${post.id}`}>
          <div className="user-post-img-container">
            <img src="https://images.unsplash.com/photo-1519068737630-e5db30e12e42?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80" />
          </div>
          <h1 className="user-post-title">{post.title}</h1>
          <h2 className="user-post-preview">{post.body}</h2>
        </Link>
        
        <footer className="user-post-footer">
          <p className="user-post-claps">24 Claps</p>
          <p className="user-post-comments">3 Comments</p>
        </footer>
      </div>
    )
  }
}

export default connect(mapStateToProps, mapDispatchToProps)(UserPostItem);