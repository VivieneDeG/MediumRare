import { combineReducers } from 'redux';
import usersReducer from '../reducers/users_reducer';
import PostsReducer from './posts_reducer';

const entitiesReducer = combineReducers({
  users: usersReducer,
  posts: PostsReducer,
});

export default entitiesReducer;