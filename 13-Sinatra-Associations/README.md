# Sinatra Associations
### LGs:
* - [ ] Define relationship between two models
* - [ ] Describe how to nest hashes inside of the params hash

**TASK:** Create OwnersController and associated view
| Controller    | views         |
| ------------- | ------------- |
| `get '/owners'`| `owners/index` |
| `get '/owners/:id'`| `owners/show` |
| `get '/owners/new'`| `owners/new` |
| ` post '/owners'`| `redirect '/owners/:id'`|
| `get '/owners/:id/edit'`| `owners/edit` |
| `patch '/owners/:id'`| `redirect '/owners/:id'` |
| `delete '/owners/:id'`| `redirect '/owners'` |


#### **Define relationship between two models**
* has_many :cats
* belongs_to :owner

#### **Describe how to nest hashes inside of the params hash**
* How can we store owner_id for a cat when we create a new cat?
* What if owner is not there and I want to create a new owner and associated with a new cat or an existing cat?
* How can we change owner_id for a cat when we update an existing cat?
    

**TASK:** Change `edit.erb` so that if author doesn't exists user can create a new author and associate with the book.
        