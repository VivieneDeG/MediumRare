import { connect } from 'react-redux';
import { fetchPost, deletePost } from '../../actions/post_actions';
import PostShow from './post_show';

const mapStateToProps = ({session, entities: { users, posts }}, ownProps) => ({
  post: posts[ownProps.match.params.postId] || { title: "", body: "" },
  currentUserId: users[session.id],
});

const mapDispatchToProps = dispatch => ({
  fetchPost: id => dispatch(fetchPost(id)),
  deletePost: id => dispatch(deletePost(id)),
});

export default connect(mapStateToProps, mapDispatchToProps)(PostShow);