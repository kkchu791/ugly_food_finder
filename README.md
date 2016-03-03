###UglyFoodFinder:
UglyFoodFinder helps you find markets that sell ugly produce. If you know of a market that sells ugly produce, add it on to this app.

###To install:

Make sure you have the correct Ruby version. You'll find it both in .ruby-version, at the root of the project, and in the Gemfile.

```
bundle install
bundle exec rake db:create
bundle exec rake db:migrate
rails s
```



###Test Coverage
Every time you run tests locally, you will also regenerate Simplecov coverage docs. Make sure you commit these last, after your PR has already been approved.

To view test coverage docs, visit <hostname>/coverage/index.html

###Production URL
http://uglyfoodfinder@herokuapp.com