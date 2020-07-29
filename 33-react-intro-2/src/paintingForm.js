import React from 'react'

export default function PaintingForm(props){
    return(<div>
        <form onSubmit={(e) => props.addPainting(e)}>
            <input type="text" placeholder="title"/>
            <input type="text" placeholder="image"/>
            <input type="submit"/>
        </form>
    </div>)
}