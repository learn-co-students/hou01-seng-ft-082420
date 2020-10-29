import React, { Component } from "react";
import newdragon from './assets/new-dragon.jpg'



class DragonForm extends Component {
  state = {
    name: "",
    description: "",
    image: newdragon,
    atWar: false
  };
  
  handleSubmit = (e) => {
    // console.log("this be submitted", e);
    e.preventDefault();
    // console.log(this.state);
    this.props.addNewDragon(this.state)
  };

  handleChange = (e) => {
      let {value, name} = e.target
    // console.log(value, name);
    this.setState({
        [name]: value
    })
  };

//   handleNameChange 

  render() {
      console.log(newdragon)
    return (
      <form onSubmit={this.handleSubmit}>
        <label>Name</label>
        <input
          type="text"
          name="name"
          onChange={this.handleChange}
        />
        <br />
        <label>Description</label>
        <input type="text" name="description" onChange={this.handleChange} />
        <br />
        <label>Image</label>
        <input type="text" name="image" onChange={this.handleChange} />
        <br />
        <input type="submit" />
      </form>
    );
  }
}

export default DragonForm;
