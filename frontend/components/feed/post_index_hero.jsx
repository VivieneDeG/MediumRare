import React from 'react';
import { Link } from 'react-router-dom';

const PostIndexHero = ({ posts }) => {
  return (
    <div className="post-index-hero-container">

      <div className="hero-left">
        {/* image, title, preview, author */}
        <div className="hero-left-img-container">
          <img src={`${posts[0].image}`} />
        </div>
        <h1 className="hero-left-title">{posts[0].title}</h1>
        <h2 className="hero-left-preview">{posts[0].body}</h2>
        <p className="hero-author">
          <Link to={`/users/${posts[0].authorId}`}>{posts[0].author}</Link>
        </p>
      </div>

      <div className="hero-middle">
        <div className="hero-middle-item">
          <div className="hero-middle-img-container">
            <img src={`${posts[1].image}`} />
          </div>
            <div className="hero-middle-text">
            <h1 className="hero-middle-title">{posts[1].title}</h1>
            <p className="hero-author">
              <Link to={`/users/${posts[1].authorId}`}>{posts[1].author}</Link>
            </p>
          </div>
        </div>

        <div className="hero-middle-item">
          <div className="hero-middle-img-container">
            <img src={`${posts[2].image}`} />
          </div>
          <div className="hero-middle-text">
            <h1 className="hero-middle-title">{posts[2].title}</h1>
            <p className="hero-author">
              <Link to={`/users/${posts[2].authorId}`}>{posts[2].author}</Link>
            </p>
          </div>
        </div>

        <div className="hero-middle-item">
          <div className="hero-middle-img-container">
            <img src={`${posts[3].image}`} />
          </div>
          <div className="hero-middle-text">
            <h1 className="hero-middle-title">{posts[3].title}</h1>
            <p className="hero-author">
              <Link to={`/users/${posts[3].authorId}`}>{posts[3].author}</Link>
            </p>
          </div>
        </div>
      </div>

      <div className="hero-right">
        <div className="hero-right-img-container">
          <img src={`${posts[4].image}`} />
        </div>
        <h1 className="hero-right-title">{posts[4].title}</h1>
        <h2 className="hero-right-preview">{posts[4].body}</h2>
        <p className="hero-author">
          <Link to={`/users/${posts[4].authorId}`}>{posts[4].author}</Link>
        </p>
      </div>
      {/* <div className="user-post-heading">
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
      </footer> */}
    </div>
  )
}

export default PostIndexHero;