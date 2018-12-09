# FindMyCompany application



## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. 

### Prerequisites

 Ruby on Rails with RVM is needed to run this application ( the commands below are for a debian  8 install)

As all Linux tutorials out there, first thing is to install the updates. Then you can proceed with the installation of the necessary tools and utilities.
```
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io -o rvm.sh
cat rvm.sh | bash -s stable --rails
source ~/.rvm/scripts/rvm
rvm install 2.5.3
gem install rails -v 5.2
```

### Set up Rails app

First, install the gems required by the application:
```
bundle install
```
Next, execute the database migrations/schema setup:
```
bundle exec rake db:migrate
```

### Populate the database with data
You have two choices  to populate the database , either you use the init.sql script included in the db_dump directory or use the seed file to generate some fake data  :
```
rake db:seed
```
### Start the app

Start the Rails app to see the In-Context-Editor added to the To-Do application. You're ready to localize your app:

    bundle exec rails server


# Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

since i'm not really proud of this work i'm going to say ..... not me
