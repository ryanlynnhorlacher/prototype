import React from 'react';

class NavButton extends React.Component {

  getBorder = (side) => side === 'right' ? 'Left' : 'Right'

  render() {
    return (
      <div
      	onClick={ this.props.onClick }
      	className='nav-button'
        style={ this.props.style }
      >
        { this.props.content }
      </div>  
    );
  }
}

const mapStateToProps = (state) => ({
  
})

const mapDispatchToProps = (dispatch) => ({
  
})

export default NavButton;