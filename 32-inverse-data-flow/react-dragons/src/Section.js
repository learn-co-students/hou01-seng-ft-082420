import React from 'react';
import DragonCard from './DragonCard';

function Section(props){
    console.log('These are my props for Section', props) 
    return(
        <div>
          <h1>{props.title}</h1>
          {props.dragons.map(dragon =>  {
          return(
            <DragonCard 
              dragon = {dragon} 
              key={dragon.id} 
              moveDragon = {props.moveDragon}
            />
          )
          })
          }
        </div>
      )
}


export default Section