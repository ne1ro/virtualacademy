Virtual Academy Project
======

## Key points:
* Ruby 2.0, Ruby on Rails 4.0
* JRuby, Puma
* PostgreSQL
* Redis for realtime messages
* Behaviour-driven development
* Moar

## Local installation:
* Get this repo
* Install Ruby, PostgreSQL
* Copy config file:  
  ```
  cp config/database.yml.example config/database.yml
  ```  
  and change settings
* Install dependencies:
  ```
  bundle install
  ```
* Prepare database:  
  ```
  rake db:create && rake db:migrate
  ```
* Have fun!
  ```
  puma
  ```

## Code convention:
[Here](https://github.com/bbatsov/ruby-style-guide) is the good stuff.

## Behaviour-Driven Development
![BDD](http://www.agilebuddha.com/wp-content/uploads/2013/08/Behavior-Driven-DevelopmentBDD-2.png)  

## REST API:
Will be soon ...

## More info:
?????
PROFIT!

Created by Alexey Kuznetsov
