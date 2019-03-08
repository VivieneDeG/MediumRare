import React from 'react';
import PostIndexItem from './post_index_item';

class PostIndex extends React.Component {
  componentDidMount() {
    this.props.fetchAllPosts();
  }

  render() {
    const { posts } = this.props;
    
    if (posts.length == 0) {
      return <div>Loading...</div>
    }
//  check if user exists
    const postIndexItems = posts.map(post => {
      return (
        <PostIndexItem
          key={post.id}
          post={post} />
      );
    });

    return (
      <div className="user-profile-container">
        {postIndexItems}
      </div>
    )
  }
}

export default PostIndex;