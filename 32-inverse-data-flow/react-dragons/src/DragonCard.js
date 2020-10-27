import React from 'react'

class DragonCard extends React.Component {
    //there are no hashes in JS
    //it is an Object
    state = {
        isClicked: false,
        atWar : this.props.dragon.atWar
    }

   
    render(){
        
        console.log('Props in DragonCard ',this.props)
        return(
          <div onClick = {() => this.props.moveDragon(this.props.dragon)}>
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