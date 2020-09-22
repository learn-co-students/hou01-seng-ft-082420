Express a many to many relationship

Actors has_many characters
Actors has_many Movies, through Characters

Movies has_many Characters
Movies has_many Actors, through Characters

Character belongs_to movie
Character belongs_to actor
