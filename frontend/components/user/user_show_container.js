import { connect } from 'react-redux';
import { fetchUser } from '../../actions/user_actions';
import { fetchPost } from '../../actions/post_actions';
import UserShow from './user_show';

const mapStateToProps = ({session, entities: { users, posts }}, ownProps) => ({
  user: users[ownProps.match.params.userId] || { name: ""},
  posts: posts,
  currentUserId: session.id,
});

const mapDispatchToProps = dispatch => ({
  fetchUser: id => dispatch(fetchUser(id)),
  fetchPost: id => dispatch(fetchPost(id)),
});

export default connect(mapStateToProps, mapDispatchToProps)(UserShow);