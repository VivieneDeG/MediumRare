import React from 'react';
import { Link } from 'react-router-dom';

const PopularPosts = ({ posts }) => {
  return (
    <div className="popular-posts-container">
      <h3 className="popular-posts-title">
        Popular on Medium
      </h3>
      <div className="popular-line-break"></div>

      <div className="popular-posts-item">
        <div className="popular-posts-number">
          01
        </div>
        <div className="popular-posts-links">
          <Link to={`/posts/${posts[0].id}`}>
            <h1 className="popular-posts-title">{posts[0].title}</h1>
          </Link>
          <p className="popular-posts-author">
            <Link to={`/users/${posts[0].authorId}`}>{posts[0].author}</Link>
          </p>
        </div>
      </div>

      <div className="popular-posts-item">
        <div className="popular-posts-number">
          02
        </div>
        <div className="popular-posts-links">
          <Link to={`/posts/${posts[1].id}`}>
            <h1 className="popular-posts-title">{posts[1].title}</h1>
          </Link>
          <p className="popular-posts-author">
            <Link to={`/users/${posts[1].authorId}`}>{posts[1].author}</Link>
          </p>
        </div>
      </div>

      <div className="popular-posts-item">
        <div className="popular-posts-number">
          03
        </div>
        <div className="popular-posts-links">
          <Link to={`/posts/${posts[2].id}`}>
            <h1 className="popular-posts-title">{posts[2].title}</h1>
          </Link>
          <p className="popular-posts-author">
            <Link to={`/users/${posts[2].authorId}`}>{posts[2].author}</Link>
          </p>
        </div>
      </div>

      <div className="popular-posts-item">
        <div className="popular-posts-number">
          04
        </div>
        <div className="popular-posts-links">
          <Link to={`/posts/${posts[3].id}`}>
            <h1 className="popular-posts-title">{posts[3].title}</h1>
          </Link>
          <p className="popular-posts-author">
            <Link to={`/users/${posts[3].authorId}`}>{posts[3].author}</Link>
          </p>
        </div>
      </div>
    </div>
  )
}

export default PopularPosts;