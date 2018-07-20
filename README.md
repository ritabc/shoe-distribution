# Shoe Distribution Site for a Local Store

#### Epicodus: Ruby Course: Independent Project Friday, July 20th, 2018

#### Rita Bennett-Chew

## Description
A site for a local shoe distribution store.

## Setup Requirements

1. Clone the repo
1. [Recreate the Database](https://www.learnhowtoprogram.com/ruby/ruby-database-basics/backing-up-and-recreating-a-database)
1. Run $'bundle install' to bundle Gemfile dependencies
1. Deploy app locally by running $'ruby app.rb'

## Technologies Used

* Ruby 2.4.1
* Postgresql and psql
* ActiveRecord

## Database Schema
A many to many database schema between stores and shoe names

## User Stories
* As a user, I want to be able to add, update, delete and list shoe stores.
* As a user, I want to be able to add and list new shoe brands. Shoe brands should include price.
* As a user, I want to be able to add shoe brands in the application (don't worry about updating, listing or destroying shoe brands).
* As a user, I want to be able to add existing shoe brands to a store to show where they are sold.
* As a user, I want to be able to associate the same brand of shoes with multiple stores.
* As a user, I want to be able to see all of the brands a store sells on the individual store page.
* As a user, I want store names and shoe brands to be saved with a capital letter no matter how I enter them.
* As a user, I want the price to be in currency format even if I just inputted a number. (In other words, typing in 50 should be updated to $50.00.)
* As a user, I do not want stores and/or shoe brands to be saved if I enter a blank name.
* As a user, I want all stores and brands to be unique. There shouldn't be two entries in the database for Blundstone.
* As a user, I want store and brand names to have a maximum of one hundred characters.

## License

This software is licensed under the MIT license.

Copyright (c)2018 **Rita Bennett-Chew**
