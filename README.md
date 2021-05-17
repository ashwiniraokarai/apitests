# README

This README would normally document whatever steps are necessary to get the
application up and running.

* To create an api-only rails app:
  - *rails new <app-name> --api* in the terminal
  
  
* To plug in rspec framework:
  - In your gemfile add *gem 'rspec-rails', '~> 5.0.0'* to dev and test environments, and run bundle after
  - gemlock file is automatically updated for you
  - Run *rspec* command in the terminal to confirm successful installation (should see no errors and a typical "no examples" found message to establish rspec runner executed)
  - Run *rails generate rspec:install* to install standard rspec helper files 
  

* In your spec file:
  - You want to require the standard rails helper via `require "rails_helper"`


* To add your own helper methods:
  - Write your helper methods in a helper file (call it anything you want - but a relevant name obviously makes it findable)
  - Wrap your helper methods in a module named after the helper file name (e.g: Methods in a helper file *request_helper.rb* should be wrapped inside a *RequestHelper* module)
  - You want to place all your helper files under a *support* folder under the *spec* directory 
  - Make helper file and module available/ reachable in your spec file
    - E.g.: 
      - `require_relative ".././support/request_helper"`
      - `include RequestHelper`

* To make helper module globally available to all spec files
  - Global configurations go under rails_helper.rb
  - E.g.:
      - `require_relative './support/request_helper' (make file available)`
      - `config.include RequestHelper (make module inside the required file available)`
