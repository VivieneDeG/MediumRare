import React from 'react';
import PostIndexHero from './post_index_hero';
import PostIndexItem from './post_index_item';
import PopularPosts from './popular_posts';
import { Loader } from '../_util';

class PostIndex extends React.Component {
  componentDidMount() {
    this.props.fetchAllPosts();
    window.scrollTo(0, 0);
  }

  render() {
    const { posts } = this.props;
    
    if (posts.length < 20) {
      return <Loader />;
    }

    if (posts[0].title == "Why You Should Be a Food Snob") {
      posts.reverse();
    }

    const l = posts.length;
    let postIndexHero = <PostIndexHero
        posts={[posts[l-10], posts[l-5], posts[l-8], posts[l-3], posts[l-1]]} />

    let postIndexItems = posts.map(post => {
      return (
        <PostIndexItem
          key={post.id}
          post={post} />
      );
    });

    let popularPosts = <PopularPosts
        posts={[posts[l-11], posts[l-12], posts[l-9], posts[l-15], posts[l-7]]} />
    
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
      </div>
    )
  }
}

export default PostIndex;