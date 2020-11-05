import React from 'react'

export default class PaintingForm extends React.Component{

  

handleSubmit = (e) => {
e.preventDefault()
this.props.addPainting(e)
this.props.history.push('/paintings')
//from here I want to send data that represents a new painting to add to state eyyeball_emoji
}

// handleClick = () => {
//     console.log(this.props)
//     this.props.history.push('/paintings') //wtf am I doing here <<<<<<< 
// }
    render(){
        return(<div>
            PaintingForm:
            <form onSubmit={this.handleSubmit}>
                <input type='text' placeholder='Painting Title'/>
                <input type='text' placeholder='Painting Image URL'/>
                <input type='text' placeholder='Artist Name'/>
                <input type='submit' value='Add Painting'/> 
            </form>

            {/* <button onClick={this.handleClick}>Click here to go to Paintings!!</button> */}
        </div>)
    }
}