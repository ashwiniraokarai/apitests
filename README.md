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
