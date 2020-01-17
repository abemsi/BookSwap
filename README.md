# Nolan & Amy's "Final" Project (Lighthouse Labs)

## Background

This project was completed as of Weeks 10-12 in the Web Development bootcamp at Lighthouse Labs. BookSwap is online platform for trading used books, utilizing Google Books API and Google Maps API to keep the content consistent, clean and user-friendly.

## Functional Requirements

There are multiple goals to this project:

- Become familiar working with REST API's in the Ruby on Rails framework
- Use existing code style and approach to implement new features in unfamiliar territory
- Apply previous learning tactics to research and become familiar with a new paradigm, language and framework

## Home 
![homepage](https://user-images.githubusercontent.com/48977789/72626505-13077980-3908-11ea-8ecc-eba015d6fd59.png)
## Browse Books
![book_list](https://user-images.githubusercontent.com/48977789/72626513-1864c400-3908-11ea-85d2-29c6ed416c80.png)
## Refine Search 
![search](https://user-images.githubusercontent.com/48977789/72626535-24508600-3908-11ea-9198-9c9cfe9b64c5.png)
## Using Google Books API to gather information for your swap 
![book_search](https://user-images.githubusercontent.com/48977789/72626552-2ca8c100-3908-11ea-8467-d7af72489e3e.png)
## Messages 
![messages](https://user-images.githubusercontent.com/48977789/72626561-2fa3b180-3908-11ea-9b71-aeb8bff97782.png)
## Conversation
![convo](https://user-images.githubusercontent.com/48977789/72626571-329ea200-3908-11ea-8d58-d7729ed54db9.png)
## Login pattern
![login_validation](https://user-images.githubusercontent.com/48977789/72626590-39c5b000-3908-11ea-969a-c51ee9c40c1d.png)

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
