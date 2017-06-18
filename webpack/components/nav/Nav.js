import React from 'react';
import { connect } from 'react-redux';
import OpenMenuButton from './OpenMenuButton';
import NavButton from './NavButton';
import SideMenu from './SideMenu';

class Nav extends React.Component {
  constructor(props) {
    super(props);
    this.state = { sideMenuVis: false }
  }

  toggleMenu = () => this.setState({ sideMenuVis: !this.state.sideMenuVis }) 

  render() {
    return (
      <div
        className='nav'
      >
        <img
          src='https://www.britishlogodesign.co.uk/portfolio_pictures/Electrical-logo-design-8.jpg'
          alt='logo'
          className='nav-logo'
        />
      <OpenMenuButton toggle={ this.toggleMenu }/>
      <div
        className='nav-buttons-wrapper'
      >
        { this.props.children }
      </div>
      <SideMenu vis={ this.state.sideMenuVis } buttons={ this.props.children }/>
      </div>
    );
  }
}

const mapStateToProps = (state) => ({
  
})

const mapDispatchToProps = (dispatch) => ({
  
})

export default connect(mapStateToProps, mapDispatchToProps)(Nav);