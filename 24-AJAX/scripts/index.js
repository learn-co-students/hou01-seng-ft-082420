function createPost(gifUrl, comment) {
  // make post div
  const div = document.createElement('div');
  const img = document.createElement('img');
  const p = document.createElement('p');

  img.setAttribute('src', gifUrl);
  // img.src = gifUrl
  p.textContent = comment;
  div.append(img, p);

  const posts = document.querySelector('.posts');
  posts.append(div);
}

const form = document.querySelector('form');

form.addEventListener('submit', function (e) {
  e.preventDefault();
  const gifUrl = document.querySelector('#gif-url').value;
  const comment = document.querySelector('#comment').value;

  createPost(gifUrl, comment);
  form.reset(); // clear the inputs in the form
});


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
    console.log(post.comment, post.url)
    createPost(post.url, post.comment)
  }
 
})




// console.log("can I see you??", json)

// fetch(URL, {}//options).then(function(res){//parsing our data})

