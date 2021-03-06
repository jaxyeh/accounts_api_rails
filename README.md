# Ruby on Rails RESTful API
### Ruby on Rails example application for the Technical Assessment.

> This repository code also includes example JavaScript code per request.

## Installation

#### Prerequisites

* Ruby 2.0+ preferred; 1.9.3+ required
* The RubyGems packaging system
* Supports SQLite (other RDBMS Database can be configured manually)

The application shall install and uses Ruby on Rails 4.1+. Here below is the basic steps you will need to get code up and running:

    $ git clone https://github.com/jaxyeh/accounts_api_rails.git
    $ cd accounts_api_rails
    $ bundle install
    $ bundle exec rake db:migrate

> **NOTICE:** For this example application, there is no tests implemented yet.

## Running Examples

After installation, you can fire up the local web server with the following commands:

    $ rails s

To see your application in action, open a browser window and navigate to http://localhost:3000.

Please use API documentation below to understand how to interact with dataset, however you can use this command to create fake dataset:

    $ rake db:seed

> **NOTICE:** The JavaScript example code can be found at `app/views/site/index.html.erb` where it handles the custom headers via AJAX requests. To validate the behavior, you may use `Inspect Element` tool provided by web browser and inspect Request Headers within the given actions every time you click on `Retrieve Account Details` button.

## API Documentation

For interaction with API Web Service, please open `api_doc/index.html` file into your browser.

# License

Released under the [Unlicense](http://unlicense.org/). o_O