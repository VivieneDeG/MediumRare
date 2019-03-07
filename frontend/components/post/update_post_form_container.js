import React from 'react';
import { connect } from 'react-redux';
import { fetchPost, updatePost} from '../../actions/post_actions';
import PostForm from './post_form';

const mapStateToProps = ({session, entities: { posts }}, ownProps) => ({
  post: posts[ownProps.match.params.postId] || { title: "", body: "" },
  formType: "Update Story",
  currentUserId: session.id,
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
    const { post, formType, currentUserId, processForm } = this.props;
    
    if (!post.id) {
      // maybe redirect or somehow stay on same page
      return <div>Loading...</div>;
    }

    if (post.authorId !== currentUserId) {
      // styling in profile.scss
      return (
        <div className="update-post-div">
          <h1 className="update-post-401">U NO HAVE ACCESS!!! 401 UNAUTHORIZED >:(</h1>
        </div>
      )
    }
    
    return (
      <PostForm post={post} formType={formType} processForm={processForm} />
    );
  }
}

export default connect(mapStateToProps, mapDispatchToProps)(UpdatePostForm);