import React from 'react';
import PostIndexHero from './post_index_hero';
import PostIndexItem from './post_index_item';
import PopularPosts from './popular_posts';
import BeatLoader from 'react-spinners/BeatLoader';

const override = {
  display: "block",
  margin: "auto"
};

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
          cssOverride={override}
          size={20}
          margin={5}
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

    const l = posts.length;
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