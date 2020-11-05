import React from "react";
// import Nav from './NavBar'
import "semantic-ui-css/semantic.min.css";

import NavBar from "./NavBar";
import { PaintingsDisplay } from "./PaintingsDisplay";
import PaintingForm from "./PaintingForm";
import paintings from "./paintings";
import PaintingInfo from "./PaintingInfo";
import { BrowserRouter, Route, Switch } from "react-router-dom";

class App extends React.Component {
  constructor() {
    super();
    this.state = {
      form: false,
      paintings: paintings,
    };
  }

  toggleForm = () => {
    this.setState({
      form: !this.state.form,
    });
  };

  addPainting = (e) => {

    let newPainting = {
      title: e.target[0].value,
      image: e.target[1].value,
      artist: {
        name: e.target[2].value
      }
    }

    this.setState({
      paintings: [...this.state.paintings, newPainting],
      // form: !this.state.form
    })

    // console.log(this.props)
    // we dont have access to the history object here
    // history object is provided by BrowserRouter

  };
  render() {
    return (
      <BrowserRouter>
        <div>
          <NavBar />
          <Switch>
            <Route
              exact
              path="/paintings"
              render={(routeProps) => (
                <PaintingsDisplay
                  {...routeProps}
                  paintings={this.state.paintings}
                />
              )}
            />

            <Route
              exact
              path="/paintings/form"
              render={(routeProps) => (
                <PaintingForm {...routeProps} addPainting={this.addPainting} />
              )}
            />
            

            <Route
            exact
            path="/paintings/:id"
            component={PaintingInfo}
            />

            {/* <button onClick={this.toggleForm}>Display/Hide form</button> 
            {
              this.state.form
              ? <PaintingForm addPainting={this.addPainting}/> //true
              : <PaintingsDisplay paintings={this.state.paintings} /> //false
            } */}
          </Switch>
        </div>
      </BrowserRouter>
    );
  }
}

export default App;
