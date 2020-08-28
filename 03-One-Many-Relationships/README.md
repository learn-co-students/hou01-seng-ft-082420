# One to Many Relationships

## LGs:
* -- Use an instance variable to reference a related object
* -- Explain the value of a single source of truth
* -- Use an instance method to reference multiple related objects
* -- Use select to reference related objects


> We are bringing ideas that exist in the real world into the code world. This is called **Modeling**. We get an idea in the real world and bring it to our computer- er, our code. 
> Last lecture we saw that _everything_ in Ruby is an **Object** and we also made objects from a blueprint- the blueprint being your **Class**. 
> Today let's consider how to take your Objects, and relate them to one another between Classes. 

# use an instance variable to reference a related object

## consider the following:

```
Class Kitten 

  attr_accessor :name 
  
  @@all = []
  
  def initialize(name, breed)
    @name = name
    @breed = breed
    self.class.all << self
  end
  
  
  def meow
    puts "#{self.name} meowed"
  end

  def self.all
    @@all
  end

end

```

## what are we seeing here? 

This is a Kitten class, our codified blueprint for making as many kitten objects as we want -all the cats you could ever want! 

![Image of Crazy Cat Lady](https://i.pinimg.com/originals/b3/4c/d2/b34cd24a80436ddf5e2a675c661e7ac5.jpg)

> yes yes, all the cats

## Quick Checkpoint 
## Use the above code to answering the following:

 1)  What kind of method is 'def meow'? 
 2)  What kind of method is 'def self.all'? 
 3)  What kind of variable is '@@all'?
 4)  How can we modify our code to get our @breed value back from a kitten instance?

>answers are at the bottom of _this_ readme 

# okay, big whoop I made cats , but I don't HAVE the cats

Absolutely it's a big deal that we can make all the kittens we want. However we _also_ want the idea of us having those kittens. Here we are going to 'associate' our objects (instances that come from a class), and have our object relate to each other. This is _Object Oriented Ruby_ after all. 

## Ah yes, you want the Owner Class  
Fantastic, build your Owner class. :grimacing: 
* * *

We want: 

* an **Owner class** that initializes it's instance with a name ("A man needs a name" - GOT reference) with the following methods (for now, we _are_ adding more later)
* **Owner.all** - a class method that returns an array of _all_ owners
* **Owner#say_hi** - an instance method that returns THAT owner saying "Hi, I'm <name goes here>,  
* **Owner#cats** - an instance method that returns THAT owner's 'list of kittens' 
* **Owner#adopt_cat** - an instance method in which we want to pass an _instance_ of a kitten as an argument to add to THAT user's 'list of cats' 
* **Owner#name** - an instance method that returns THAT owner's name 

> protip : Owner(dot)method_name denotes a CLASS method, Owner(Hashtag/PoundSymbol)method_name denotes an INSTANCE method. This might help ya'll with the labs

## What's next??

So we know what instance methods are. They are methods that instances can call do have some behavior happen. The general understanding of a method is if we need outside information we introduce that as an argument or a parameter usually wrapped by paranthesis >> these things >'()' 

### Use an instance variable to reference a related object

Modify Owner to have a kitten _associated_ to THAT owner 
Remember: > owners have many kittens 

The kittens belong to us. Nice. 


```
Class Owner

    def initialize(name)
        @name = name
      
    end

    def adopt_kitten(kitten)

        # we are making an association, a relationship, i.e. we want to call owner.adopt_kitten(kitten) and have a kitten object passed as argument 

        kitten.owner = self

        # reading the only line of code here in plain broken english: 
        # "kitten's owner is I"
        # we are calling the owner method on the kitten **object** 
        # do we have a setter for the kitten's 'owner' attribute?? 
       
    end

end

```
**But wait** 
before this code can run, we would need to modify our Kitten class to have a variable 'owner' that is accesible to to a Kitten instance. 

## Checkpoint Question:

5) What kind of variable should owner be?? (answers at the bottom, but give it a shot- we run on the Honor code here :eyes:)

Ok, ok now let's modify our code: 

```
Class Kitten 

  attr_accessor :name
  
  @@all = []
  
  def initialize(name, breed)
    @name = name
    @breed = breed

    @owner = nil 

    self.class.all << self
  end
  
  
  def meow
    puts "#{self.name} meowed"
  end

  def self.all
    @@all
  end

  def owner
  @owner
  end

  def owner=(owner)
  @owner = owner
  end

end

```
* * *
We modified our Kitten class with a 'getter' and 'setter' owner method, but we could also as easily add an : `attr_accessor :owner` in our Kitten class and get the same result. These macros are great for us to use, but for this lesson we are using 'owner' and 'owner='.
Note we also assigned our @owner to nil on initialization. @owner would've _already_ been nil (you can test it in pry) but as devs we always want to be explicit rather than implicit, we leave nothing to chance. 
Also in this **domain**, kittens are born without a owner :sob: 

run this in an irb session. Antonio showed us: 
```

irb -r ./run.rb 

```
replace run.rb with the file youre trying to run. In this case : ./kitten.rb

Let's make a couple kitten objects, make an owner object or two. 
Then test your method. 

'kitten.owner' should return back the owner object associated with THIS kitten. 

This is **using an instance variable to reference a related object** 

Fantastic.


## Now I want to see cats owned by owner

Owner has_many kittens. this is still the goal. We want this idea in code. 
We've already associated the kitten to the owner. But let's access all kittens owned by any particular owner.

### Checkpoint Question: 
6) What kind of method should 'kitten.owner' be? (answers at the bottom)

## Adding Owner#kittens 

* On intialize we want a variable 'kittens' set to none ( we have no kittens at first /sad face)
* When a kitten is owned, we want to add _that_ kitten to our owners array

run code, and see what owner.kittens gets us. 

we now built an instance variable **to reference multiple related objects**



## Explain the value of a single source of truth

The above works, but not efficiently. 

We want to steer clear of nesting our objects in several spots. 
Delete the kitten from your Kitten.all array
and you should still see our kitten in our owners array


**we do not want to leave our objects all over our code**
we built methods that relate to each other _directly_ 
we are NOT gonna to keep that pattern. 

instead lets make an instance METHOD that reference all Kittens and returns _only_ the kitten belonging to us. 

use Select to iterate through a class's all method and _select_ what we want from them

```
       def cats
        Kitten.all.select do |c| 
            c.owner == self 
        end
    end

```







## Bonus: 
#### Validations
As the code stands, we can adopt the _same_ cat and the owner.cats method returns an array of duplicates :shocked: . Which doesn't make much sense- computers are dumb as hell. Fun as it may be to actually 






# Vocabulary
* **Model**: A class whose primary responsibility is to store data
* **Domain**: The subject matter of the problem, (e.g., Learn’s domain is online education)
* **Domain modeling**: Creating models for your domain to represent real or abstract ideas (e.g., Learn’s domain model includes modules, cohorts, assignments as well as their relationships)
* **Relationships**: How one model or thing is connected to another model or thing
    * One to many relationship: **A relationship describing a single model that contains or keeps track of other models (a tree has many leaves, an organism has many cells, the universe has many galaxies)** 
    * Many to many relationship: **Next time**
    * Other relationships: **Next time**


# Oh yeah, the answers! 

> 1) instance method
> 2) class method
> 3) class variable - a variable only accesible to the class it is in. 
> 4) we want to make a getter method that returns the instance variable '@breed', we could also create an attr_reader 
> 5) instance variable
> 6) instance method
