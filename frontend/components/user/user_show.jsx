import React from 'react';
import UserPostItem from './user_post_item';

class UserShow extends React.Component {
  componentDidMount() {
    this.props.fetchUser(this.props.match.params.userId);
  }
  
  componentDidUpdate(prevProps) {
    const postIds = this.props.user.postIds;
    if (prevProps.user.id != this.props.match.params.userId) {
      this.props.fetchUser(this.props.match.params.userId);
    }
    if (postIds && prevProps.user.postIds != postIds) {
      this.props.user.postIds.forEach(id => this.props.fetchPost(id));
    }
  }

  getProfileContent() {
    const { user } = this.props;

    if (!user.postIds) {
      return <div>Loading...</div>
    }

    if (user.postIds.length > 0) {
      const posts = [];
      Object.values(this.props.posts).forEach(post => {
        if (user.postIds.includes(post.id)) {
          posts.push(post);
        }
      });

      const postItems = posts.map(post => {
        return (
          <UserPostItem
            key={post.id}
            user={user}
            post={post} />
        );
      });

      return (
        <div className="user-profile-content">
          <h3 className="user-content-heading">Featured Stories</h3>
          {postItems}
        </div>
      )
    }

    return (
      <p className="user-profile-content">{user.name} hasn’t been active on MediumRare yet.
        Check back later to see what's on their mind.</p>
    )
  }

  render() {
    const { user } = this.props;
    
    return (
      <div className="user-profile-container">
        <header className="user-profile-header">
          <h1 className="user-profile-name">{user.name}</h1>
          {this.getProfileContent()}
        </header>
      </div>
    )
  }
}

export default UserShow;