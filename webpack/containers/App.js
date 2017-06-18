import React from 'react';
import Nav from '../components/nav/Nav';
import NavButton from '../components/nav/NavButton';

const App = ({ children }) => {
  return (
    <div>
      <div
        className='nav-padding'
      >
        { children }
      </div>
      <Nav>
        <NavButton side='right' content='Home'/>
        <NavButton side='right' content='Gallery'/>
        <NavButton side='right' content='Estimator'/>
        <NavButton side='right' content='About Us'/>
        <NavButton side='right' content='Contact Us'/>
      </Nav>
    </div>
  )
}

export default App;

