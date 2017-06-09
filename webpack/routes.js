import React from 'react';
import { Route, IndexRoute } from 'react-router';
import App from './containers/App';
import NoMatch from './components/NoMatch';
import HomePage from './components/homePage/HomePage';

export default (
  <Route>
    <Route path="/" component={ App } >
      <IndexRoute component={ HomePage } />
      <Route path="*" status={ 404 } component={ NoMatch } />
    </Route>
  </Route>
)

