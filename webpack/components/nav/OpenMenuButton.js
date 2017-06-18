import React from 'react';
import { connect } from 'react-redux';

class OpenMenuButton extends React.Component {
  constructor(props) {
    super(props);
  }


  render() {
    return (
      <i
        className="fa fa-bars"
        onClick={ this.props.toggle }
      />
    );
  }
}

const mapStateToProps = (state) => ({
  
})

const mapDispatchToProps = (dispatch) => ({
  
})

export default connect(mapStateToProps, mapDispatchToProps)(OpenMenuButton);