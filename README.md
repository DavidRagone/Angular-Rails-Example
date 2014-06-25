# Hack Night: Angularize All the Things!

This app is bare-bones (in functionality and design). It doesn't do much, but isn't supposed to. The idea is for you to take a simple Rails-only app and add Angular.js.

## Steps to get started
```
git clone https://github.com/DavidRagone/Angular-Rails-Example.git angular-rails-example
cd angular-rails-example
rvm use 2.1.0@angular-rails-example --create
bundle
rake db:create
rake db:migrate
rake db:seed
touch config/initializers/secret_token.rb
config/initializers/secret_token.rb < "AngularRailsExample::Application.config.secret_token = '2938hasdfp982hasdjfh8923hfnax9982p389hasdf;hf;p238hfdsfds23k'"
rails server -p 3002
```

Do yourself a favor and change that secret! (I just added one here because you'll need that file and a value there to get the server running)
(Running on port 3002 in case you have another server running)
