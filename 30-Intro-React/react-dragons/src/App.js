const dragons = [
  {
      "id": 1,
      "name": "Toothless",
      "description": "A Night Fury",
      "image":"https://www.wikihow.com/images/b/b2/Draw-Toothless-Step-24.jpg",
      "atWar": false
  },
  {
      "id": 2,
      "name": "Bozar",
      "description": "An uninteresting dragon",
      "image":"https://static.boredpanda.com/blog/wp-content/uploads/2015/05/What-are-dragons-doing-nowadays-fb3.jpg",
      "atWar": false
  },
  {
      "id": 3,
      "name": "Tomar",
      "description": "An interesting dragon",
      "image":"https://media.giphy.com/media/bU660Y0VKPvCE/giphy.gif",
      "atWar": true
  }
]


function App() {
  return (
    <div>
      <Section title = 'Home'/>
      <Section title = 'War'/>
    </div>
  );
}


function Section(props){
  console.log(props)
  return(
    <div>
      <h1>{props.title}</h1>
      {dragons.map(dragon =>  {
      return(
        <DragonCard dragon = {dragon} key={dragon.id}/>
      )
      })
      }
    </div>
  )
}

function DragonCard(props){
  console.log('Props in DragonCard ',props)
  return(
    <div>
      <h3>{props.dragon.name}</h3>
      <p>{props.dragon.description}</p>
      <img style={{width: '100px'}} src={props.dragon.image} alt="Dragon Card goes here"/>
    </div>
  )
}
//looks like HTML eye_emoji
//JSX
//1) only ONE element can be returned
// 2) Captialize all Components
// 3) _props_ to access props, we need '{}'

export default App;
