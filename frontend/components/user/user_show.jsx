import React from 'react';

class UserShow extends React.Component {
  componentDidMount() {
    this.props.fetchUser(this.props.match.params.userId);
  }
  
  componentDidUpdate(prevProps) {
    if (prevProps.user.id != this.props.match.params.userId) {
      this.props.fetchUser(this.props.match.params.userId);
      if (this.props.user.postIds) {
        this.props.user.postIds.forEach(id => this.props.fetchPost(id));
      }
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
          <div>
            <p>{user.name}</p>
            <div className="img-container">
              <img src="https://images.unsplash.com/photo-1519068737630-e5db30e12e42?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80" />
            </div>
            <h1>{post.title}</h1>
            <h2 className="preview">{post.body}</h2>
          </div>
        )
      })
      return (
        <div className="user-profile-content">{postItems}</div>
      )
    }

    return (
      <p className="user-profile-content">{user.name} hasn’t been active on MediumRare yet.
        Check back later to see what's on their mind.</p>
    )
  }

  render() {
    console.log(this.props);
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