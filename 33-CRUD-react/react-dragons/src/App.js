import React from 'react'
import Section from './Section'
import DragonForm from './DragonForm'
import dragons from './dragonData'


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

  addNewDragon = (newDragon) => {
    console.log('submit event in APP')
    console.log(newDragon)
    //adding a new dragon
    // pushing a new dragon into allDragons
    // react way => create a new array, with previous array PLUS new dragon
    this.setState({
      allDragons: [...this.state.allDragons, newDragon]
    })
    // it is only changing entire state object

  }

  deleteDragon = (id) =>{
    console.log('deleting THIS dragon  -> ', id)
    // deleting
    // means returning the previous array we had MINUS the dragon
    // with the ID we are selecting 
    this.setState({
      allDragons: this.state.allDragons.filter(dragon => dragon.id != id)
    })

  }

  render(){
    // console.log("this is State in APP", this.state)
    return (
    <div>
      <DragonForm
          addNewDragon = {this.addNewDragon}
      />
      <Section 
        title = 'Home' 
        dragons =  {this.state.allDragons.filter(dragon => dragon.atWar === false)}
        moveDragon = {this.moveDragon}
        deleteDragon = {this.deleteDragon}
        />
      <Section 
        title = 'War' 
        dragons =  {this.state.allDragons.filter(dragon => dragon.atWar === true)}
        moveDragon = {this.moveDragon}
        deleteDragon = {this.deleteDragon}
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
