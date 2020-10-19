function createPost(gifUrl, comment, id) {
  // make post div
  const div = document.createElement('div');
  const img = document.createElement('img');
  const p = document.createElement('p');
  const button = document.createElement('button')
  const editBtn = document.createElement('button')

 

  div.setAttribute('postId', id )

  img.setAttribute('src', gifUrl);
  // img.src = gifUrl
  p.textContent = comment;
  button.innerText = "Delete this post :("

  // Button to 'delete'
  button.addEventListener('click', function(){
    console.log("deleting")
    // send delete request 
    fetch(`http://localhost:3000/posts/${id}`,{
      method: 'DELETE'
    }).then(function(){
      // removing from DOM
      div.remove()
    })
  })

  // button to append a form to edit a comment
  editBtn.innerText = "edit post"
  editBtn.addEventListener('click', function(){
    // console.log('return form here')
    let form = createEditForm(comment)

    form.addEventListener('submit', function(e){
      e.preventDefault()
      let newComment = document.querySelector('#edit-input').value
      console.log(newComment)
      fetch(`http://localhost:3000/posts/${id}`, {
        method: 'PATCH',
        headers:{
          'Content-Type':'application/json'
        },
        body: JSON.stringify({
          comment: newComment
        })
      })
      .then(function(res){
        return res.json()
      })
      .then(function(data){
        
        p.innerText = data.comment
        form.remove()
      })
    })

    div.append(form)
  })


  div.append(img, p, button, editBtn);

  const posts = document.querySelector('.posts');
  posts.append(div);
}

const form = document.querySelector('form');

form.addEventListener('submit', function (e) {
  // when our form is submitted
  e.preventDefault();
  // grab values
  const gifUrl = document.querySelector('#gif-url').value;
  const comment = document.querySelector('#comment').value;

  
  // possible spot for sending data to our database
  postCatGif(gifUrl, comment)
  // .then(res=> res.json())
  .then(function(res){
    return res.json()
  })
  .then(function(data){
    console.log(data) //data has a comment, id, and a url
    debugger;
    // createPost on DOM
    createPost(data.url, data.comment);
  })

  form.reset(); // clear the inputs in the form
});

function postCatGif(gif, comment){
  console.log('is this function running?', gif, comment)

  return fetch("http://localhost:3000/posts", {
    method: "POST",
    headers:{
      "Content-Type": "application/json", // tell the get requests what sort of content it is
      "Accept":"application/json"  //if it's acceoting anything 'I' can only accept THIS datatype
    },
    body: JSON.stringify({
      url: gif,
      comment: comment
    })
  })

}


// dynamically grab data from our imitated server 
// GET request
fetch("http://localhost:3000/posts") 
.then(function(whatever){
  // parse our data
  return whatever.json() //json() is a function that 'parses'

}) //first then statement takes a fn as arg
.then(function(json){
  // console.log("This is my response" , json)
  // we have our array 
  for(const post of json){ //for every 'post'(think element) in the array(referenced by 'json' which is the argument we passed in our function on line 36)
    // console.log(post.comment, post.url)
    createPost(post.url, post.comment, post.id)
  }
 
})

function createEditForm(comment){
  const form = document.createElement('form')
  const input = document.createElement('input')
  const submitBtn = document.createElement('button')

  input.type = 'text'
  input.value= comment //I'll
  input.id = 'edit-input'
  submitBtn.type = 'submit'
  submitBtn.innerText = "Edit Post"
  form.append(input, submitBtn)
  // form.appendChild(input)
  // form.appendChild(submitBtn)

  form.classList.add('edit-form')
  return form
}
// console.log("can I see you??", json)

// fetch(URL, {}//options).then(function(res){//parsing our data})

