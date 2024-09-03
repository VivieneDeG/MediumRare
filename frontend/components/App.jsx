import React from 'react';
import { Route, Redirect, Switch } from 'react-router-dom';
import { ProtectedRoute } from '../util/route_util';
import { Footer, Header, Modal } from './_util';
import UserShowContainer from './user/user_show_container';
import CreatePostFormContainer from './post/create_post_form_container';
import UpdatePostFormContatiner from './post/update_post_form_container';
import PostShowContainer from './post/post_show_container';
import PostIndexContainer from './feed/post_index_container';

const App = () => (
  <div className="body">
    <Modal />
    <Header />

    <div className="main">
      <Switch>
        <ProtectedRoute exact path="/posts/new" component={CreatePostFormContainer} />
        <ProtectedRoute exact path="/posts/:postId/edit" component={UpdatePostFormContatiner} />
        <Route exact path="/posts/:postId" component={PostShowContainer} />
        <Route exact path="/users/:userId" component={UserShowContainer} />
        <Route exact path="/" component={PostIndexContainer} />
        <Redirect to="/" />
      </Switch>
    </div>

    <Footer />
  </div>
);

export default App;