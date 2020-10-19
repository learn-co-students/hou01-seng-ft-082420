// traditional functions
// function sayWalid(){
//     console.log('Walid')
// }

// sayWalid()

const sayWalid = () => {
    console.log('Walid')
}
sayWalid()

console.log('************')
console.log('************')

// function addTwo(number){
    //     return number + 2
    // }
    
    let addTwo = (number) =>  number + 2 
    
    const sumOfTwoNumbers = (num1, num2) => num1 + num2
    // const sumOfTwoNumbers = (num1, num2) => { return num1 + num2} same function only with curly braces **return is NEEDED
    
    console.log(addTwo(1))
    
    console.log(sumOfTwoNumbers(2,2))
    
    console.log('************')


    const foods = ["ramen", "tofu", "rice", "pizza", "sweet breads"]

    console.log(foods)
    // forEach loop
    let forEachTest = foods.forEach(function(food){
        console.log(`I like ${food}`)
        return food
    })

    foods.forEach(food => console.log(`I like ${food}`))

    console.log("THIS IS MY RETURN VALUE OF A FOREACH LOOP ", forEachTest)

    const names = ["Stephen", "Ben Looper", "Alex", "Eddie", "Sheriff"]

    const mappedNames = names.map(name => 'Hi my name is '+ name)

    console.log(mappedNames)
    console.log(names)

    // .find
    const foundName = names.find(name => name == 'Alex')
    console.log(foundName)

    const words = ['sloth', 'parakeets', 'cat', 'doggies', 'kitties'];

    // I want to find all words with a length greater than 5 
    const longWords = words.filter(word => word.length > 5)
    console.log(longWords)

    // ruby syntax for select 
        // words.select do |word |
        // word.length > 5
        // end
        const studentArray = ["Mike", "John", "Ciara", "Eddie", "Haley"]

        const studentArray2 = ["Payton", "Iain", "Stephanie"]

        // create an arry with both arrays elements?? 
        const newArray = [...studentArray, ...studentArray2]
        // spread operator 


        let obj = { name: "John", likes:["vidya games", "music", "biking"], color: "purple"}
        let johnUpdate = { teacher: "Raul"} 

        let newObj = { ...obj, ...johnUpdate } 
        let objTest =  { ...obj, johnUpdate }  ///what is the name of the key of johnUpdate??? 

        const pojo = {
            name: "Raul",
            likes: ["music", "music", "music"],
            age: 27,
            subject: "JS",
            color: "blue",
            vegetable: "broccoli",
            pokemon: "charmander"
        }

        const {name,  pokemon, vegetable} = pojo //object destructuring

        console.log(pokemon)

        const arrayToBeDestructured = ["red", "blue", "green"]

        let [a, b, c] = arrayToBeDestructured 

        console.log(a)

        
        

