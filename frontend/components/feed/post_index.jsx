import React from 'react';
import { css } from '@emotion/core';
import PostIndexItem from './post_index_item';
import BeatLoader from 'react-spinners/BeatLoader';

const override = css`
    display: block;
    margin: auto;
`;

class PostIndex extends React.Component {
  componentDidMount() {
    this.props.fetchAllPosts();
    window.scrollTo(0, 0);
  }

  render() {
    const { posts } = this.props;
    
    if (posts.length == 0) {
      return <div className="loading">
        <BeatLoader
          css={override}
          color={'#03a97d'} />
      </div>
    }

    let postIndexItems = posts.map(post => {
      return (
        <PostIndexItem
          key={post.id}
          post={post} />
      );
    });

    postIndexItems = postIndexItems.reverse();
    
    return (
      <div className="user-profile-container">
        <h1 className="user-profile-name">Featured Stories</h1>
        {postIndexItems}
      </div>
    )
  }
}

export default PostIndex;