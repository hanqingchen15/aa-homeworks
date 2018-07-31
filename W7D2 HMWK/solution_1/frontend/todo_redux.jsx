import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';

import Root from './components/root';

document.addEventListener('DOMContentLoaded', () => {
  const preloadedState = localStorage.state ?
    JSON.parse(localStorage.state) : {};
  let store = configureStore(preloadedState);

  // store = applyMiddleWare(store, addLoggingToDispatch);

  const root = document.getElementById('content');


  ReactDOM.render(<Root store={store} />, root);
});

// const addLoggingToDispatch = (store) => {
// //   let storeDispatch = store.dispatch;
// //   return (action) => {
//     console.log(store.getState());
//     console.log(action);
//     storeDispatch(action);
//     console.log(store.getState());
// //   }
// }

// const addLoggingToDispatch = store => next => action => {
//   // your code here
//   console.log(store.getState());
//   console.log(action);
//   next(action);
//   console.log(store.getState());
// }
//
// const applyMiddleWare = (store, ...middlewares) => {
//   let dispatch = store.dispatch;
//   middlewares.forEach((midWare) => {
//     dispatch = midWare(store)(dispatch);
//   });
//   return Object.assign({}, store, { dispatch })
//
// }
