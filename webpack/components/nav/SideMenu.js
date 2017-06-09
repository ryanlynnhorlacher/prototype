import React from 'react';

class SideMenu extends React.Component {

  onClick = () => {
    console.log('clicked')
  }

  getClass = () => this.props.vis ? 'sideMenuOpen' : 'sideMenuClosed'

  render() {
    return (
      <div
        className={ `${this.getClass()}` }
      >
        { this.props.buttons }
      </div>
    );
  }
}

export default SideMenu;