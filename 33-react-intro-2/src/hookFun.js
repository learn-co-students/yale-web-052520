import React, { useState } from 'react'


function HooksFun(){

    // state={
    //     count: 0
    // } // state in a class component

    let [ count, setCount ] = useState(0) //setCount(newValuefortheState)
    let [ like, changeLike ] = useState(0)

    // let [ count, xyz ] = useState(0)

    // array destructing
    // useState(0) returns [state, functionToChangeState ]

    // let count = useState(0)[0]
    // let setCount = useState(0)[1]

   // let count = 0

    // let changeCount = (value) => {
    //     count = value
    //     console.log(count)
    // }

    let changeValues = () => {
        setCount(count+1)
    }


    return(<div>
        <h1> Count: {count} </h1>
        {/* <button onClick={() => setCount(count+1)}>Increment Count</button> */}
        <button onClick={() => changeValues()} style={{color: "red"}}>Increment Count</button>

    </div>)
}

export default HooksFun