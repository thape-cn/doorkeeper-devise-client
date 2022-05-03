# Doorkeeper Devise+Omniauth Client

[![Build Status](https://semaphoreci.com/api/v1/doorkeeper-gem/doorkeeper-devise-client/branches/master/badge.svg)](https://semaphoreci.com/doorkeeper-gem/doorkeeper-devise-client)

This app is an example of OAuth2 client. It was built in order to test
the [doorkeeper provider example](http://doorkeeper-provider.herokuapp.com/).
It uses [rails](http://github.com/rails/rails/), [devise](http://github.com/plataformatec/devise)
and [omniauth](http://github.com/intridea/omniauth) gems. OAuth2
strategy is build on top of [abstract OAuth2 strategy for OmniAuth](https://github.com/intridea/omniauth-oauth2)

## About Doorkeeper Gem

For more information [about the gem](https://github.com/applicake/doorkeeper),
[documentation](https://github.com/applicake/doorkeeper#readme),
[wiki](https://github.com/applicake/doorkeeper/wiki/_pages) and another resources,
check out the project [on GitHub](https://github.com/applicake/doorkeeper).

## Installation & Configuration

If you want to run the application by yourself here are the steps for
you.

First you need to clone the [repository from GitHub](http://github.com/applicake/doorkeeper-devise-client)

    git clone git://github.com/applicake/doorkeeper-devise-client.git

Install all the gems

    bundle install

And migrate the database

    bundle exec rake db:migrate

At this point the application should be ready to run, but it won't
communicate correctly with the provider. You need to set up environment
variables to indicate the oauth2 provider values. In your
`.env` file, setup these variables

    DOORKEEPER_APP_ID = "6b36653e4aa01..." # ID for your app registered at the provider
    DOORKEEPER_APP_SECRET = "c739ebd9095c..." # Secret
    DOORKEEPER_APP_URL = "https://oauth2id.test" # URL to the provider

If you want to test it out you can use our sample provider using
[doorkeeper](http://github.com/applicake/doorkeeper) gem. It's available
[here](http://doorkeeper-provider.herokuapp.com). In order to add your
application and get your application ID and SECRET [click
here](http://doorkeeper-provider.herokuapp.com/oauth/application/new).

Now you are ready to start the app

    bundle exec rails s
