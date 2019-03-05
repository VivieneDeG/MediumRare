import React from 'react';
import { connect } from 'react-redux';
import { fetchPost, updatePost} from '../../actions/post_actions';
import PostForm from './post_form';

const mapStateToProps = (state, ownProps) => ({
  post: state.entities.posts[ownProps.match.params.postId] || { title: "", body: "" },
  formType: "Update Story",
  currentUserId: state.session.id,
});

const mapDispatchToProps = dispatch => ({
  fetchPost: id => dispatch(fetchPost(id)),
  processForm: post => dispatch(updatePost(post)),
});

class UpdatePostForm extends React.Component {
  componentDidMount() {
    this.props.fetchPost(this.props.match.params.postId);
  }

  componentDidUpdate(prevProps) {
    if (prevProps.post.id != this.props.match.params.postId) {
      this.props.fetchPost(this.props.match.params.postId);
    }
  }

  render() {
    console.log(this.props);
    const { post, formType, currentUserId, processForm } = this.props;
    
    if (!post.id) {
      // maybe redirect or somehow stay on same page
      return null;
    }

    if (post.authorId !== currentUserId) {
      return (
        <h1>Access denied. 401 Unauthorized</h1>
      )
    }
    
    return (
      <PostForm post={post} formType={formType} processForm={processForm} />
    );
  }
}

export default connect(mapStateToProps, mapDispatchToProps)(UpdatePostForm);