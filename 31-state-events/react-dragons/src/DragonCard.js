import React from 'react'

class DragonCard extends React.Component {
    //there are no hashes in JS
    //it is an Object
    state = {
        isClicked: false,
        atWar : this.props.dragon.atWar
    }

    handleClick = (e) => {
        this.setState({
            isClicked: !this.state.isClicked,
            atWar : !this.state.atWar
        }, ()=> {
            console.log("State was updated",this.state)
        })
    }
    render(){
        
        console.log('Props in DragonCard ',this.props)
        return(
          <div onClick = {this.handleClick}>
            <h3>{this.props.dragon.name}</h3>
            <p>{this.props.dragon.description}</p>
            <img style={{width: '100px'}} src={this.props.dragon.image} alt="Dragon Card goes here"/>
            <p>{this.state.atWar ? 'At War' : 'Home'}</p>
          </div>
        )
    }
  }










//   function DragonCard(props){
//     console.log('Props in DragonCard ',props)
//     return(
//       <div>
//         <h3>{props.dragon.name}</h3>
//         <p>{props.dragon.description}</p>
//         <img style={{width: '100px'}} src={props.dragon.image} alt="Dragon Card goes here"/>
//         <p>{props.dragon.atWar ? 'At War' : 'Home'}</p>
//       </div>
//     )
//   }

  

  export default DragonCard