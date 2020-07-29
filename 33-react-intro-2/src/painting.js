import React from 'react'

// Function Component
export default function Painting(props){
    console.log(props)
    return(
        <div>
            {/* I am from Painting component!!! */}
            <h2>{props.p.title}</h2>
            <img src={props.p.image} />
        </div>
    )
} 

// Class component
// export default class Painting extends React.Component{

//     render(){
//         return(
//             <div>
//                 {/* I am from Painting component!!! */}
//                 <h2>{this.props.p.title}</h2>
//                 <img src={this.props.p.image} />
//             </div>
//         )
//     }
// }