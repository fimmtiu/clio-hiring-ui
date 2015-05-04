# Clio Hiring Project Part 2

## Environment Requirements

The app must run on:

- Ruby >= 2.1.4
  - Feel free to upgrade the ruby version located in the Gemfile if you want
- Rails >= 4.2.1
  - Feel free to upgrade the rails version located in the Gemfile if you want
- sqlite3
- You will need to install `bundler` and do a `bundle install` in the directory to get the required gems installed

## Tasks

We want to wrap a Rails UI around the Gif Simulator you did. Feel free to reuse the code from that project in this. 

### Allow the simulations to be persisted in the DB. 

  * Each user should be able to have thier own simulations running.
  * Each simulation should have a user specified identifier so that can distinguish between multiple simulations. 
  * A new simulation should start with a random state, but with user specified dimensions of the seating arragement
  * A simulation's current state should be recorded in the database 

### Create the UI

  * A user should be able to see the current state of a particular game. 
  * A user should be able to see the verdict of the current state of the game
  * While the user is looking at a particular game, it should be able to automatically and asynchronously update itself to the next state. 

### Test it

  * Write some tests using whatever testing framework you'd like. Your tests should have a reasonable test coverage of the code you have written  
    * See: http://guides.rubyonrails.org/testing.html
    * Possible testing frames include, but are not limited to: `rspec`, `minitest`, `test-unit` 

### Security

  * Security is very important to a web app. Along with this project, submit a list of security issues that can occur in a web application and for each one tell us:
    * What makes it bad?
    * Is it possible that this app is vulnerable to it? If so, how would you fix it. If not, how do you know? (Don't worry about external gems here)
    
