import { connect } from 'react-redux';
import { fetchUser } from '../../actions/user_actions';
import { fetchAllPosts } from '../../actions/post_actions';
import PostIndex from './post_index';

const mapStateToProps = ({ entities: { posts, users }}) => ({
  posts: Object.values(posts),
  users: Object.values(users),
});

const mapDispatchToProps = dispatch => ({
  // fetchUser: id => dispatch(fetchUser(id)),
  fetchAllPosts: () => dispatch(fetchAllPosts()),
});

export default connect(mapStateToProps, mapDispatchToProps)(PostIndex);