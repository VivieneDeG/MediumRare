import React from 'react';
import { Link } from 'react-router-dom';

const PostIndexHero = ({ posts }) => {
  return (
    <div className="post-index-hero-container">

      <div className="hero-left">
        <Link to={`/posts/${posts[0].id}`}>
          <div className="hero-left-img-container">
            <img src={`${posts[0].image}`} />
          </div>
        </Link>
        <Link to={`/posts/${posts[0].id}`}>
          <h1 className="hero-left-title">{posts[0].title}</h1>
          <h2 className="hero-left-preview">{posts[0].body}</h2>
        </Link>
        <p className="hero-author">
          <Link to={`/users/${posts[0].authorId}`}>{posts[0].author}</Link>
        </p>
      </div>

      <div className="hero-middle">
        <div className="hero-middle-item">
          <Link to={`/posts/${posts[1].id}`}>
            <img className="hero-middle-img" src={`${posts[1].image}`} />
          </Link>
          <div className="hero-middle-text">
            <Link to={`/posts/${posts[1].id}`}>
              <h1 className="hero-middle-title">{posts[1].title}</h1>
              <h2 className="hero-middle-preview">{posts[1].body}</h2>
            </Link>
            <p className="hero-middle-author">
              <Link to={`/users/${posts[1].authorId}`}>{posts[1].author}</Link>
            </p>
          </div>
        </div>

        <div className="hero-middle-item">
          <Link to={`/posts/${posts[2].id}`}>
            <img className="hero-middle-img" src={`${posts[2].image}`} />
          </Link>
          <div className="hero-middle-text">
            <Link to={`/posts/${posts[2].id}`}>
              <h1 className="hero-middle-title">{posts[2].title}</h1>
              <h2 className="hero-middle-preview">{posts[2].body}</h2>
            </Link>
            <p className="hero-middle-author">
              <Link to={`/users/${posts[2].authorId}`}>{posts[2].author}</Link>
            </p>
          </div>
        </div>

        <div className="hero-middle-item">
          <Link to={`/posts/${posts[3].id}`}>
            <img className="hero-middle-img" src={`${posts[3].image}`} />
          </Link>
          <div className="hero-middle-text">
            <Link to={`/posts/${posts[3].id}`}>
              <h1 className="hero-middle-title">{posts[3].title}</h1>
              <h2 className="hero-middle-preview">{posts[3].body}</h2>
            </Link>
            <p className="hero-middle-author">
              <Link to={`/users/${posts[3].authorId}`}>{posts[3].author}</Link>
            </p>
          </div>
        </div>
      </div>

      <div className="hero-right">
        <Link to={`/posts/${posts[4].id}`}>
          <div className="hero-right-img-container">
            <img src={`${posts[4].image}`} />
          </div>
        </Link>
        <Link to={`/posts/${posts[4].id}`}>
          <h1 className="hero-right-title">{posts[4].title}</h1>
          <h2 className="hero-right-preview">{posts[4].body}</h2>
        </Link>
        <p className="hero-author">
          <Link to={`/users/${posts[4].authorId}`}>{posts[4].author}</Link>
        </p>
      </div>
    </div>
  )
}

export default PostIndexHero;