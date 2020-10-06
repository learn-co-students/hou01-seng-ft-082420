document.addEventListener('DOMContentLoaded', function(){
    // console.log('We be loaded')

    const form = document.querySelector('form')
    // console.log('this is my form, ', form)

    form.addEventListener('submit', function(e){
        //  e is the event 
        console.log(e)

        // the default nature of a form when submitted is to refresh the page
        // we want to 'prevent' that 'Default' nature
        e.preventDefault()
        const gifUrl = document.querySelector('#gif-url').value 
        const comment = document.querySelector('#comment').value 

        createPost(gifUrl, comment)
        form.reset()
    })

    function createPost(gif, comment){
            // we grabbing input data
        // let's create a new post
    //     <div>
    //     <img src="https://media0.giphy.com/media/KcW2FVEJnzKeiZkVI1/giphy.gif">
    //     <p>This cat is so sad. Somebody hug him now!!</p>
    //     </div>
    const div = document.createElement('div')
    const img = document.createElement('img')
    img.src = gif
    const p = document.createElement('p')
    p.innerText = comment

    div.append(img, p)

    const posts = document.querySelector('.posts')
    posts.append(div)
    }


    // const meowButton = document.querySelector('#meow')
    // // console.log(meowButton)
    // meowButton.addEventListener('click', function(){
    //     console.log('meow')
    // })

    // const purrButton = document.querySelector('#purr')
    // purrButton.addEventListener('click', function(){
    //     console.log('purrrr')
    // })

    // const howlButton = document.querySelector('#howl')
    // howlButton.addEventListener('click', function(){
    //     console.log('howwl')
    // })

    const catActions = document.querySelector('.actions')
    catActions.addEventListener('click', function(e){
        console.log(e.target)
        switch(e.target.id){
            case 'meow':
                console.log('meow')
                break;
            case 'purr':
                console.log('purr')
                break;
            case 'howl':
                console.log('howl')
                break;
                
        }
    })





})