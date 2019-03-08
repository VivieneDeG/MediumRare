import React from 'react';
import PostIndexItem from './post_index_item';

class PostIndex extends React.Component {
  componentDidMount() {
    this.props.fetchAllPosts();
    window.scrollTo(0, 0);
  }

  render() {
    const { posts } = this.props;
    
    if (posts.length == 0) {
      return <div>Loading...</div>
    }

    const postIndexItems = posts.map(post => {
      return (
        <PostIndexItem
          key={post.id}
          post={post} />
      );
    });

    return (
      <div className="user-profile-container">
        <h1 className="user-profile-name">Featured Stories</h1>
        {postIndexItems}
      </div>
    )
  }
}

export default PostIndex;