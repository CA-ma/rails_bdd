# Full Stack Application: Article publishing site 
Developed and documented by,
* Aubain, Max - [Github](https://github.com/CA-ma)

## Summary
**Front end**: HTML and CSS.<br>
**Back end**: Ruby on Rails.<br>
**Testing**: Cucumber feature test and Rspec unit test.

This repository contains a [Ruby on Rails](https://rubyonrails.org/) application that employs the creation, editing, deleting, and listing of articles in a blog-style format.  Users (can log in?) and leave comments on articles? using [Devise](https://github.com/plataformatec/devise). Feature tests drafted with Behavioral Driven Design (BDD) techniques drive the development process and unit tests are used to verify the functionality of the models.  Feature testing is accomplished with [Cucumber](https://cucumber.io/) and unit tests utilize [Rspec](https://rspec.info/).

Those of you familiar with Rails will probably recognize the general structure and format of this application from the [Getting Started with Rails](https://guides.rubyonrails.org/getting_started.html) guide.  Judging from the number of questions about this application on Stack Overflow, I would say it is one of the Rites of Passage for new Rails developers.  This is my **_go_** of it, with a heavy emphasis on acceptance testing, BDD, and applying each aspect of the Create, Read, Update, and Destroy (CRUD) data management flow in a single type of functionality: the posting of an article.

## Deployment and UI
[The application](https://rails-articles-demo.herokuapp.com/) is deployed using Heroku hosting services.  Heroku is suitable for hosting a Rails application as it includes a database with the site build.  The persistent storage of a database is required for the articles that are displayed on the page.

(Picture of app here)

## Building
To locally run or test this application, fork this repository to your github account and clone to a local workspace.  The following commands for Mac OS terminal, when run in your project directory, will configure your local workspace with the necessary gems and packages.

```
# INSTALLATION AND SETUP
# Install Ruby if it is not installed anywhere on your machine
$ brew install ruby

# Install Rails if it is not installed anywhere on your machine
$ gem install rails

# Install PostgreSQL if it is not installed anywhere on your machine
$ brew install postgres

# Install the gems listed in the Gemfile to your local workspace
$ bundle install

# Condition the database
$ rails db:setup

# COMMANDS
# Visit the site locally at 'localhost:3000' in a browser
$ rails s

# Run unit tests, feature tests, a specific feature test
$ bundle exec rspec
$ bundle exec cucumber
$ bundle exec cucumber features/name_of_feature_test_file.feature
```

Some of the gems in the [`Gemfile`](/Gemfile) chosen for this project are not standard with the default scaffolding of a Rails project.  These include,
* `gem 'cucumber-rails'`  =>  Feature testing with Cucumber
* `gem 'rspec-rails'`, `  gem 'factory_bot_rails'`, and `gem 'shoulda-matchers'`  =>  Unit testing with Rspec
* `gem 'devise'`  =>  User authentication with Devise
* `gem 'pry-byebug'`  =>  Debugging tool

## Development and Testing



## Acknowledgements
Thank you to [Craft Academy](https://craftacademy.se/) in Stockholm, Sweden for crafting this challenge.



