# Photo Gallery

![homepage](/public/images/homepage.png "homepage")

This project is a test example app with Ruby on Rails and with an integration API of Unsplash.

Ruby version: `2.6.3`
Rails version: `6.0.0`

## Installation

Clone the project

`git clone https://github.com/hackvan/photo_gallery`
`cd photo_gallery`

> If you are using rvm please you can create a gemset for the project:
> `rvm use 2.6.3@photo_gallery`

Install dependencies

`bundle install`

> You need bundler in order to run this command, you can install with:
> `gem install bundler`

## Database

In order to crate the database

`rails db:migrate`

> This project use postgresql, you need to install a run it


## Run

To run the application

`rails server`

Open your web browser and go to

`http://localhost:3000`