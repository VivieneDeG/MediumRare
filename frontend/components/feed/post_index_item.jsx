import React from 'react';
import { Link } from 'react-router-dom';

const PostIndexItem = ({ post }) => {
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
      </div>


      <Link to={`/posts/${post.id}`}>
        <div className="user-post-img-container">
          <img src={`${post.image}`} />
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

export default PostIndexItem;