import React from 'react';
import logo from './logo.svg';
import './App.css';
import { Test } from './test';
// import Test from './test'; //make sure export default
import paintings from './paintings' 
import Painting from "./painting"


function App() {
  return (
    <div>
          <h1>Monday!!!</h1>
              <Test />
          {paintings.map(painting => <Painting p={painting} key={painting.id} />)}

    </div>
   
  );
}

export default App;
