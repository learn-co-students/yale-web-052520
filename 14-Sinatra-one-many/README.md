# Sinatra Associations

## LGs:
- [ ] Define relationship between two models
- [ ] Describe how to nest hashes inside of the params hash

---
## Complete this task before lecture:
### **TASK:** Create OwnersController methods and associated view
| Controller    | views         |
| ------------- | ------------- |
| `get '/owners'`| `owners/index` |
| `get '/owners/:id'`| `owners/show` |
| `get '/owners/new'`| `owners/new` |
| `post '/owners'`| `redirect '/owners/:id'`|
| `get '/owners/:id/edit'`| `owners/edit` |
| `patch '/owners/:id'`| `redirect '/owners/:id'` |
| `delete '/owners/:id'`| `redirect '/owners'` |

---
## Lecture Content: 
![](https://i.imgur.com/zfJnugC.png)

* Change in `seeds.rb` file:
```ruby
10.times do
    Owner.create(name: Faker::Name.name) 
end

20.times do
    Dog.create(name: Faker::Creature::Dog.name , breed: Faker::Creature::Dog.breed, owner_id: Owner.all.sample.id)
end
```
* Change in `config.ru` file:
```ruby
    use DogsController
    run ApplicationController
```
* Solution for the task
* Chage in `show.erb` to display owner's info and dog's info

### **Define relationship between two models**
* has_many :dogs
* belongs_to :owners

### **Describe how to nest hashes inside of the params hash**
* How can we store owner_id for a dog when we create a new dog?
* What if owner is not there and I want to create a new owner and associated with a new dog or an exsiting dog?
* How can we change owner_id for a dog when we change an existing dog?
    

#### **TASK:** Change `edit.erb` so that if owner doesn't exists user can create a new owner and associate with the dog.
        