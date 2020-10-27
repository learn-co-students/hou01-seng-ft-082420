import Section from './Section'
import dragons from './dragonData'
import React from 'react'


class App extends React.Component {
  // console.log(dragons)

  state = {
    allDragons : dragons
  }
  
  moveDragon = (chosenDragon) => {
    console.log('this dragon is clicked!', chosenDragon)
    // dragon is our object 
    // dragon.atWar is our value we want to change 
    chosenDragon.atWar = !chosenDragon.atWar

    this.setState({
      allDragons: this.state.allDragons.map(dragon => dragon.id == chosenDragon.id ? chosenDragon : dragon)
    })

  }

  render(){
    // console.log("this is State in APP", this.state)
    return (
    <div>
   
      <Section 
        title = 'Home' 
        dragons =  {this.state.allDragons.filter(dragon => dragon.atWar === false)}
        moveDragon = {this.moveDragon}
      />
      <Section 
        title = 'War' 
        dragons =  {this.state.allDragons.filter(dragon => dragon.atWar === true)}
        moveDragon = {this.moveDragon}
        //nice, whats next? 
      />
    </div>
  );
  }
  
}




//looks like HTML eye_emoji
//JSX
//1) only ONE element can be returned
// 2) Captialize all Components
// 3) _props_ to access props, we need '{}'

export default App;
