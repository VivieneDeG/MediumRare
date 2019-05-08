import React from 'react';
import { css } from '@emotion/core';
import PostIndexHero from './post_index_hero';
import PostIndexItem from './post_index_item';
import PopularPosts from './popular_posts';
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
    
    if (posts.length < 20) {
      return <div className="loading">
        <BeatLoader
          css={override}
          color={'#03a97d'} />
      </div>
    }

    if (posts[0].title == "I Just Ate Meat For The First Time In 20 Years") {
      posts.reverse();
    }

    let postIndexHero = <PostIndexHero posts={posts.slice(0, 5)} />

    let postIndexItems = posts.slice(5).map(post => {
      return (
        <PostIndexItem
          key={post.id}
          post={post} />
      );
    });

    let popularPosts = <PopularPosts
        posts={[posts[13], posts[12], posts[15], posts[9], posts[17]]} />
    
    return (
      <div className="post-index-container">
        {postIndexHero}
        <div className="line-break" />
        <div className="post-index-main">
          <div className="post-index-items">
            {postIndexItems}
          </div>
          {popularPosts}
        </div>
        <div className="footer-break" />
        <div className="footer-text">
          <p>Help</p>
          <p>Status</p>
          <p>Writers</p>
          <p>Blog</p>
          <p>Careers</p>
          <p>Privacy</p>
          <p>Terms</p>
          <p>About</p>
        </div>
      </div>
    )
  }
}

export default PostIndex;