import React from 'react';
import { Link } from 'react-router-dom';
import UserPostItemContainer from './user_post_item_container';
import { Loader } from '../_util';

class UserShow extends React.Component {
  componentDidMount() {
    this.props.fetchUser(this.props.match.params.userId);
    window.scrollTo(0, 0);
  }
  
  componentDidUpdate(prevProps) {
    const postIds = this.props.user.postIds;
    if (prevProps.user.id != this.props.match.params.userId) {
      this.props.fetchUser(this.props.match.params.userId);
    }
    if (postIds && prevProps.user.postIds != postIds) {
      this.props.user.postIds.forEach(id => this.props.fetchPost(id));
    }
    window.scrollTo(0, 0);
  }

  getProfileContent() {
    const { user } = this.props;

    if (user.postIds.length > 0) {
      const posts = [];

      Object.values(this.props.posts).forEach(({body, ...postAttrs}) => {
        if (user.postIds.includes(postAttrs.id)) {
          let preview;

          if (body.length > 140) {
            preview = body.slice(0, 140);
            preview = preview.slice(0, preview.lastIndexOf(" ")) + "…";
          } else {
            preview = body;
          }

          posts.push({ ...postAttrs, preview: preview });
        }
      });

      let postItems = posts.reverse().map(post => {
        return (
          <UserPostItemContainer
            key={post.id}
            post={post} />
        );
      });

      return (
        <div className="user-profile-content">
          <h3 className="user-content-heading">Stories</h3>
          {postItems}
        </div>
      )
    }

    return (
      <p className="user-profile-no-content">{user.name} hasn’t been active on MediumRare yet.
        Check back later to see what's on their mind.</p>
    )
  }

  render() {
    const { user } = this.props;

    if (!user.postIds) {
      return <Loader />;
    }
    
    return (
      <div className="user-profile-container">
        <header className="user-profile-header">
          <div className="user-profile-header-left">
          <h1 className="user-profile-name">{user.name}</h1>
            {this.props.currentUserId == this.props.match.params.userId &&
              <Link to="/posts/new">
                <button className="create-post-button">New Story</button>
              </Link>
            }
          </div>
          <div className="user-profile-avatar">
            <i className="fa-solid fa-circle-user"></i>
          </div>
        </header>

        <div className="user-profile-line-break" />

          {this.getProfileContent()}
      </div>
    )
  }
}

export default UserShow;