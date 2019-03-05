import { connect } from 'react-redux';
import { createPost } from '../../actions/post_actions';
import PostForm from './post_form';

const mapStateToProps = state => ({
  post: { title: "", body: "" },
  formType: "Create Story",
});

const mapDispatchToProps = dispatch => ({
  processForm: post => dispatch(createPost(post)),
});

export default connect(mapStateToProps, mapDispatchToProps)(PostForm);