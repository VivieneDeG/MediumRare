import React from 'react';

class UserShow extends React.Component {
  componentDidMount() {
    this.props.fetchUser(this.props.match.params.userId);
  }
  
  componentDidUpdate(prevProps) {
    console.log(prevProps.user.id);
    console.log(this.props.match.params.userId);
    if (prevProps.user.id != this.props.match.params.userId) {
      this.props.fetchUser(this.props.match.params.userId);
      console.log(this.props);
    }
  }

  render() {
    const { user } = this.props;

    if (!user) {
      console.log("I AM GROOOOT");
      return null;
    }
    
    return (
      <div className="user-profile-container">
        <header className="user-profile-header">
          <h1 className="user-profile-name">{user.name}</h1>
          <p className="user-profile-description">{user.name} hasn’t been active on MediumRare yet.
            Check back later to see their stories, claps, and highlights.</p>
        </header>
      </div>
    )
  }
}

export default UserShow;