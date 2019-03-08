import { createStore, applyMiddleware } from 'redux';
import logger from 'redux-logger';
import thunk from 'redux-thunk';
import rootReducer from '../reducers/root_reducer';

const configureStore = (preloadedState = {}) =>
  process.env.NODE_ENV === 'production'
    ? createStore(rootReducer, preloadedState, applyMiddleware(thunk))
    : createStore(rootReducer, preloadedState, applyMiddleware(thunk, logger)
);

export default configureStore;