import React from 'react';
import { Link } from 'react-router-dom';

const PostIndexItem = ({ post }) => {
  return (
    <div className="post-index-item-container">
      <div className="post-index-item-text">
        <Link to={`/posts/${post.id}`}>
          <h1 className="post-index-item-title">{post.title}</h1>
          <h2 className="post-index-item-preview">{post.preview}</h2>
        </Link>
        <p className="post-index-item-author">
          <Link to={`/users/${post.authorId}`}>{post.author}</Link>
        </p>
      </div>

      {post.image &&
        <Link to={`/posts/${post.id}`}>
          <img className="post-index-item-img" src={`${post.image}`} />
        </Link>
      }

    </div>
  )
}

export default PostIndexItem;