# Clio Hiring Project Part 2

## Environment Requirements

The app must run on:

- Ruby >= 2.1.4
  - Feel free to upgrade the ruby version located in the Gemfile if you want
- Rails >= 4.2.1
  - Feel free to upgrade the rails version located in the Gemfile if you want
- sqlite3
  - There is a file `db/seeds.rb` which you can use to modify seed data. This can be run with `rake db:seed`
- You will need to install `bundler` and do a `bundle install` in the directory to get the required gems installed

## Tasks

We want to wrap a Rails UI around the Gif Simulator you did (https://github.com/clio/clio-hiring-simulator). Feel free to reuse the code from that project in this. 

### Allow the simulations to be persisted in the DB. 

  * Each user should be able to have thier own simulations running.
  * Each simulation should have a user specified identifier so that they can distinguish them.
  * A new simulation is given user specified dimensions for the seating arrangement. Each person in the seating arrangement should have a randomized opinion (or no opinion) to start.
  * A simulation's current state should be recorded in the database 

### Create the UI

  * A user should be able to see the current state of a particular game. 
  * A user should be able to see the verdict of the current state of the game
  * While the user is looking at a particular game, it should automatically and asynchronously update itself to the next state at a regular interval. 

### Test it

  * Write some tests using whatever testing framework you'd like. Your tests should have a reasonable test coverage of the code you have written.  
    * See: http://guides.rubyonrails.org/testing.html
    * Possible testing frameworks include, but are not limited to: `rspec`, `minitest`, `test-unit` 
