import React from 'react';
import Nav from '../components/nav/Nav';
import NavButton from '../components/nav/NavButton';

const App = ({ children }) => {
  return (
    <div>
      <Nav>
        <NavButton side='right'/>
        <NavButton side='right'/>
        <NavButton side='right'/>
        <NavButton side='right'/>
        <NavButton side='right'/>
      </Nav>
      <div
        className='nav-padding'
      >
        { children }
      </div>
    </div>
  )
}

export default App;

