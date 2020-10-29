import React from "react";

class DragonCard extends React.Component {
  //there are no hashes in JS
  //it is an Object
  state = {
    isClicked: false,
    atWar: this.props.dragon.atWar,
  };

  render() {
    console.log("Props in DragonCard ", this.props);
    let {dragon} = this.props
    return (
      <div>
        <div onClick={() => this.props.moveDragon(dragon)}>
          <h3>{dragon.name}</h3>
          <p>{dragon.description}</p>
          <img
            style={{ width: "100px" }}
            src={dragon.image}
            alt="Dragon Card goes here"
          />
          <p>{this.state.atWar ? "At War" : "Home"}</p>
        </div>
        <button onClick = {()=>this.props.deleteDragon(dragon.id)}>Delete Dragon :(</button>
      </div>
    );
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

export default DragonCard;
