import React from 'react';
import { css } from '@emotion/core';
import PostIndexHero from './post_index_hero';
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

    posts.reverse();

    let postIndexHero = <PostIndexHero posts={posts.slice(0, 5)} />
    // posts.slice(0, 5).map(post => {
    //   return (
    //     <PostIndexItem
    //       key={post.id}
    //       post={post} />
    //   );
    // });

    let postIndexItems = posts.slice(5).map(post => {
      return (
        <PostIndexItem
          key={post.id}
          post={post} />
      );
    });
    
    return (
      <div>
        {postIndexHero}
        <h1>Featured Stories</h1>
        {postIndexItems}
      </div>
    )
  }
}

export default PostIndex;