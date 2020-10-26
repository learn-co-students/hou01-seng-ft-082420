// class Animal {
//     constructor(name, species){
//         this.name = name 
//         this.species = species
//     }
//     introduce = () => {
//         console.log(`Hi!, I'm ${this.name}, I'm a ${this.species}`)
//         // Hi, I'm Biscuit, I'm a cat
//     }
// }



// class Kitten extends Animal {
//     constructor(name, age, species){
//         super(name, species)
//         this.age = age
//     }

//     purr = () => {
//         console.log(`${this.name} is purring`)
//     }

// }

// Kitten.prototype.meow = function meow(){
//     console.log(`${this.name} says meow`)
// }


// class Elephant extends Animal {
//     constructor(weight, name, species){
//         super(name, species)
//         this.weight = weight
//     }

//     sayImHeavy = () => {
//         console.log(`Hi, I'm ${this.name} and I'm heavy`)
//     }
// }


// let tesla = new Kitten("Tesla", "2", "Cat")
// console.log(tesla)

// let biscuit = new Kitten("Biscuit", "8", "Cat")

// let dumbo = new Elephant(200, "Dumbo", "Elephant")

// // biscuit.meow.bind(this)

// console.log(biscuit.meow)
// biscuit.purr()
// biscuit.introduce()

// dumbo.introduce()
// dumbo.sayImHeavy()



class Person {
    constructor(name, age){
        this.name = name 
        this.age = age 
    }

    introduce = () => {
        return `I'm ${this.name}, I'm ${this.age} years old`
    }

    render = () => {  // rende rin scope of student
    
        // append a div with this student's info to the DOM
        let div = document.createElement('div')
        let h1 = document.createElement('h1')
        h1.textContent = this.introduce() //this is instance of Student, introduce is a parent function
        div.append(h1)
        document.body.append(div)
    }
}

// instructors have role 
// students have mod
class Instructor extends Person {
    constructor(name, age, role){
        super(name, age)
        this.role = role
    }
}

class Student extends Person { 
    constructor(name, age, mod){
        super(name, age)
        this.mod = mod
    }


}

let joe = new Instructor("Joe", "29", "Coach")
console.log(joe.introduce())

let payton = new Student("Payton", "27", "3")
console.log(payton.introduce())
payton.render()
joe.render()
