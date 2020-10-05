console.log('I am loaded, fam')

let h1 = document.querySelector('h1')
h1.innerText = 'Austin and Houston'

let span = document.getElementById('cohort-name')
// let span = document.querySelector('#cohort-name')

console.log(`${span}`)
span.innerText = 'Codevid-19'


// console.log(test)

let img = document.createElement('img')
console.log(img)
img.src = './cat.gif'
document.body.append(img)

// is there a method that abstracts that??? 

// grab our list items, and iterate through them 
let lis = document.querySelectorAll('li') //returns a nodeList

for(li of lis){
    li.classList.add('red-text')
}

// for(let i = 0; i < lis.length; i++){
//     let li = lis[i]
    
//     li.textContent = 'ok'
// }

let p = document.createElement('p')
p.innerText = 'Its a Monday'
p.classList.add('red-text')
document.body.append(p)