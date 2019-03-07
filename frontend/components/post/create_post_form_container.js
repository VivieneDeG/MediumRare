import { connect } from 'react-redux';
import { createPost } from '../../actions/post_actions';
import PostForm from './post_form';

const mapStateToProps = ({ session }) => ({
  post: { title: "", body: "" },
  formType: "Create Story",
  currentUserId: session.id,
});

const mapDispatchToProps = dispatch => ({
  processForm: post => dispatch(createPost(post)),
});

export default connect(mapStateToProps, mapDispatchToProps)(PostForm);