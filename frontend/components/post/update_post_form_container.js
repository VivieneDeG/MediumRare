import React from 'react';
import { connect } from 'react-redux';
import {
  fetchPost,
  updatePost,
  deletePost
} from '../../actions/post_actions';
import PostForm from './post_form';
import BeatLoader from 'react-spinners/BeatLoader';

const override = {
  display: "block",
  margin: "auto"
};

const mapStateToProps = ({session, entities: { posts }}, ownProps) => ({
  post: posts[ownProps.match.params.postId] || { title: "", body: "", image: "" },
  formType: "Update Story",
  currentUserId: session.id,
});

const mapDispatchToProps = dispatch => ({
  fetchPost: id => dispatch(fetchPost(id)),
  processForm: post => dispatch(updatePost(post)),
  deletePost: id => dispatch(deletePost(id)),
});

class UpdatePostForm extends React.Component {
  componentDidMount() {
    this.props.fetchPost(this.props.match.params.postId);
    window.scrollTo(0, 0);
  }

  componentDidUpdate(prevProps) {
    if (prevProps.post.id != this.props.match.params.postId) {
      this.props.fetchPost(this.props.match.params.postId);
    }
    if (this.props.post.authorId !== this.props.currentUserId) {
      this.props.history.replace(`/posts/${this.props.post.id}`);
    }
    window.scrollTo(0, 0);
  }

  render() {

    const { post, formType, currentUserId, processForm, deletePost, history } = this.props;
    
    if (!post.id) {
      return <div className="loading">
        <BeatLoader
          cssOverride={override}
          size={20}
          margin={5}
          color={'#52ae4f'} />
      </div>
    }
    
    return (
      <PostForm
        post={post}
        formType={formType}
        currentUserId={currentUserId}
        processForm={processForm}
        deletePost={deletePost}
        history={history} />
    );
  }
}

export default connect(mapStateToProps, mapDispatchToProps)(UpdatePostForm);