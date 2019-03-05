import React from 'react';

class UserShow extends React.Component {
  componentDidMount() {
    this.props.fetchUser(this.props.match.params.userId);
  }

  render() {
    const { user } = this.props;
    
    return (
      <div className="user-profile-container">
        <header className="user-profile-header">
          <h1 className="user-profile-name">{user.name}</h1>
          <p className="user-profile-description">{user.name} hasn’t been active on Medium yet.
            Check back later to see their stories, claps, and highlights.</p>
        </header>
      </div>
    )
  }
}

export default UserShow;