import React from 'react';
import { Link } from 'react-router-dom';

const IMAGES = [
  "https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80",
  "https://images.unsplash.com/photo-1505826759037-406b40feb4cd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1652&q=80",
  "https://images.unsplash.com/photo-1546964124-0cce460f38ef?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80",
  "https://images.unsplash.com/photo-1466978913421-dad2ebd01d17?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1334&q=80",
  "https://images.unsplash.com/photo-1542365887-1149961dccc7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80",
  "https://images.unsplash.com/photo-1432139509613-5c4255815697?ixlib=rb-1.2.1&auto=format&fit=crop&w=664&q=80",
  "https://images.unsplash.com/photo-1481070555726-e2fe8357725c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
  "https://images.unsplash.com/photo-1529692236671-f1f6cf9683ba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80",
  "https://images.unsplash.com/photo-1460306855393-0410f61241c7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1652&q=80",
  "https://images.unsplash.com/photo-1504973960431-1c467e159aa4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80",
  "https://images.unsplash.com/photo-1499028344343-cd173ffc68a9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80",
  "https://images.unsplash.com/photo-1484300681262-5cca666b0954?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=736&q=80",
];

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
          <img src={IMAGES[Math.floor(Math.random() * IMAGES.length)]} />
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