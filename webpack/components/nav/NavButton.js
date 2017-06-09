import React from 'react';

class NavButton extends React.Component {
  constructor(props) {
    super(props);
    this.style={
    	float: props.side,
    	[`border${this.getBorder(props.side)}`]: '1px solid black',
    	...props.style,
    }
  }

  getBorder = (side) => side === 'right' ? 'Left' : 'Right'

  render() {
    return (
      <div
      	onClick={ this.props.onClick }
      	className='nav-button'
      	style={ this.style }
      >
        NavButton
      </div>  
    );
  }
}

const mapStateToProps = (state) => ({
  
})

const mapDispatchToProps = (dispatch) => ({
  
})

export default NavButton;