### MANY TO MANY 

Performers has_many concerts
Concerts belongs to performers, belongs to venues 
Venues has many concerts 


People have many shirts 
shirts have many people 
person_shirt joiner 


1) created migrations ActiveRecord migrations, set up models to inherit from ActiveRecord

2) created our seeds by running rake db:seed
