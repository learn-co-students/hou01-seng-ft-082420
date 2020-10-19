// fetch('api_v1_owners_path')
fetch('http://localhost:3000/api/v1/owners')
.then(res=> res.json())
.then(data=>{ 
    // data is an array of owners
    console.log(data)
    data.forEach(owner => renderOwner(owner))
})

const renderOwner = (owner) => {
    let {name, age, kittens} = owner
    console.log(name, age, kittens)
    let div = document.createElement('div')

    let h1  = document.createElement('h1')
    h1.textContent = `${name} is ${age} years old with ${kittens.length} cats`

    let ul = document.createElement('ul')
    kittens.forEach(kitten => {
        let li = document.createElement('li')
        li.innerText = kitten.name
        ul.append(li)
    })
    div.append(h1, ul)
    document.body.append(div)
}

