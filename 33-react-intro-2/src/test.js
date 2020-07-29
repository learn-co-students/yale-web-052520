import React from 'react'

// export function Test(){
//     return(
//         <div>
//             <h3> Course: Software Engineering </h3>
//             <h4> Yale-Summer-2020 </h4>
//         </div>
//     )
// }
 

 export class Test extends React.Component{

    // constructor(){
    //     super()
    //     this.state={
    //         show: true,
    //         name: "Vidhi S."
    //     }
    // }


    state = {
        show: true,
        name: "Vidhi S."
    }

    handleChange = () => {
        // console.log("Button is clicked!!!")
        this.setState({
            show: !this.state.show
        }, () => console.log(this.state.show)) // always rerenders the page
        console.log(this.state.show) // previous value
    }

    render(){
        // this.setState({
        //     name: "Someone else"
        // }) NEVER do this
        // console.log("Testing setState!!!")
        return(
            <div>
                <h3> Course: Software Engineering </h3>
                <h4> Yale-Summer-2020 </h4>
                <button onClick={() => this.handleChange()}> Click me!!!</button>
                {this.state.show ? <p>True</p> : <p>False</p>}
            </div>
        )
    }
}