import React from 'react';
import { connect } from 'react-redux';

class HomePage extends React.Component {
  constructor(props) {
    super(props);
    this.state = { value: ''}
  }

  render() {
    return (
      <div className='container'>
      { 'This is the home page and this \n is a line break'}
      <div
        onClick={ () => console.log(this.state.value)}
      >
      click here
      </div>

      <textarea
        style={{ width: '300px', height: '200px' }}
        onChange={ (e) => console.log(e.target.value) }
      />
      </div>  
    );
  }
}

const mapStateToProps = (state) => ({
  
})

const mapDispatchToProps = (dispatch) => ({
  
})

export default connect(mapStateToProps, mapDispatchToProps)(HomePage);