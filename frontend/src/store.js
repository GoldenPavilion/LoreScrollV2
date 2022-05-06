import { createStore, applyMiddleware, compose, combineReducers } from 'redux';
import thunk from 'redux-thunk';

// REDUCERS
import currentUserReducer from './reducers/main/currentUserReducer'
import loginReducer from './reducers/main/loginReducer'

const reducers = combineReducers({
    currentUserReducer,
    loginReducer
})

const composeEnhancer = window.__REDUX_DEVTOOLS_EXTENSION_COMPOSE__ || compose;

const store = createStore(reducers, composeEnhancer(applyMiddleware(thunk)));

export default store;