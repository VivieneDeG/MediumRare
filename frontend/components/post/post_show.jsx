import React from 'react';

class PostShow extends React.Component {
  componentDidMount() {
    this.props.fetchPost(this.props.match.params.postId);
  }

  componentDidUpdate(prevProps) {
    if (prevProps.post.id != this.props.match.params.postId) {
      this.props.fetchPost(this.props.match.params.postId);
    }
  }

  render() {
    const { post } = this.props;

    if (!post) {
      return null;
    }

    return (
      <div>
        <header>
          <h1>{post.title}</h1>
          <p>{post.author}</p>
        </header>
        <div>
          <p>{post.body}</p>
        </div>
      </div>
    )
  }
}

export default PostShow;