### Workflow question
1) is it saving the variables and THEN pushing all variables using migration? 

2) made a class that inherits ActiveRecord::Base 
            rake db:create_migration ##command to create a migration file 
            then in 'def change' set up your table and columns
            rake db:migrate to move set up to database
            look at changes in schema
            add stuff to database through seeds.rb file ## rake db:seed



rake - ruby automating stuff
