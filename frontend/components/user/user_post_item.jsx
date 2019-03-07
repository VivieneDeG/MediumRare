import React from 'react';
import { Link } from 'react-router-dom';

const UserPostItem = ({ user, post }) => {
  return (
    <div className="user-post-container">
      <p className="user-post-name">{user.name}</p>
      <div className="user-post-img-container">
        <img src="https://images.unsplash.com/photo-1519068737630-e5db30e12e42?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80" />
      </div>
      <h1 className="user-post-title">{post.title}</h1>
      <h2 className="user-post-preview">{post.body}</h2>
    </div>
  )
}

export default UserPostItem;