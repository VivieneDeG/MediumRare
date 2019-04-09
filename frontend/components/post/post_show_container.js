import { connect } from 'react-redux';
import { fetchPost } from '../../actions/post_actions';
import PostShow from './post_show';

const mapStateToProps = ({session, entities: { posts }}, ownProps) => ({
  post: posts[ownProps.match.params.postId] || { title: "", body: "", image: "" },
  currentUserId: session.id,
});

const mapDispatchToProps = dispatch => ({
  fetchPost: id => dispatch(fetchPost(id)),
});

export default connect(mapStateToProps, mapDispatchToProps)(PostShow);