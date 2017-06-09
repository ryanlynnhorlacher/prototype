import React from 'react';
import { connect } from 'react-redux';

class OpenMenuButton extends React.Component {
  constructor(props) {
    super(props);
  }

        // <i className="fa fa-bars" onClick={ this.onClick }></i>

  render() {
    return (
      <div
        onClick={ this.props.toggle }
        className='fa-bars'>
      </div>
    );
  }
}

const mapStateToProps = (state) => ({
  
})

const mapDispatchToProps = (dispatch) => ({
  
})

export default connect(mapStateToProps, mapDispatchToProps)(OpenMenuButton);