import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import { Test } from './test';
// import Test from './test'; //make sure export default
import paintings from './paintings' 
import Painting from "./painting"
import PaintingForm from './paintingForm';
import HooksFun from './hookFun';
import 'semantic-ui-css/semantic.min.css'


class App extends Component {

  state={
    // paintings: paintings 
    paintings,
    displayForm: false
  }

  addPaintings = (e) => {
    // debugger
    e.preventDefault()
    // console.log(e.target)
    let painting = {
      title: e.target[0].value,
      image: e.target[1].value
    }

    this.setState({
      paintings: [...this.state.paintings, painting],
      displayForm: false
    })

  }

  toggleForm = () => {

    this.setState({
      displayForm: !this.state.displayForm
    })
  }

  render(){
    return (
      <div>
            {/* <h1>Monday!!!</h1> */}
                {/* <Test /> */}
                <div className="ui inverted blue menu">
                  <a className='item'>
                    <h2 className="ui header">
                      <i className="paint brush icon"></i>
                      <div className="content">
                        Painting
                      </div>
                    </h2>
                  </a>
                </div> 
                <HooksFun />
            <button onClick={this.toggleForm}> Toggle Form</button>
            {
            this.state.displayForm
            ? <PaintingForm addPainting={this.addPaintings}/>
            : this.state.paintings.map(painting => <Painting p={painting} key={painting.id} />)
            }
      </div>
     
    );
  }
  
}

export default App;
