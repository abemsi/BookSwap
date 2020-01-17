
​

# Nolan & Amy's "Final" Project (Lighthouse Labs)

## Background

This project was completed as of Weeks 10-12 in the Web Development bootcamp at Lighthouse Labs. BookSwap is online platform for trading used books, utilizing Google Books API to keep the content consistent, clean and user-friendly.

## Functional Requirements

There are multiple goals to this project:

- Become familiar working with REST API's in the Ruby on Rails framework
- Use existing code style and approach to implement new features in unfamiliar territory
- Apply previous learning tactics to research and become familiar with a new paradigm, language and framework
- A simulation of the real world where feature and bug-fix requests are listed instead of step-by-step instructions on how to implement a solution

# ScreenShots 
## Home 
https://user-images.githubusercontent.com/48977789/72622771-2531e980-3901-11ea-9669-2f37df4892cd.png
## Browse Books 
https://user-images.githubusercontent.com/48977789/72622776-25ca8000-3901-11ea-9ccf-08ac1239a273.png
## Refine Search 
https://user-images.githubusercontent.com/48977789/72622747-1b0feb00-3901-11ea-8a80-d612fd1588e2.png
## Using Google Books API to gather information for your swap 
https://user-images.githubusercontent.com/48977789/72622773-25ca8000-3901-11ea-8def-9e7c4586e252.png
## Messages 
https://user-images.githubusercontent.com/48977789/72622761-1fd49f00-3901-11ea-86f2-40b26668c051.png
## Conversation 
https://user-images.githubusercontent.com/48977789/72622772-25ca8000-3901-11ea-97f7-075a8f9aaf7f.png
## Login pattern 
https://user-images.githubusercontent.com/48977789/72622762-1fd49f00-3901-11ea-8182-93e578d4c8d9.png

## Ruby

* Ruby version ~> '2.5.7'
* Rails version ~> '4.2.8'
* psql (PostgreSQL) version ~> '9.5.19'

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Put Stripe (test) keys into appropriate .env vars
7. Run `rails s -b 0.0.0.0` to start the server

* Database initialization ~> 'bookswap_development'

* Deployment instructions