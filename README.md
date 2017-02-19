# _Flickr Clone_

#### _photo-sharing web app. 16 Feb 2017_

#### By _**Jim Padilla**_

## Description

This Rails 5 app is an easy-to-use app that mimics the functionality of the popular photo-sharing website, Flickr.

## Heroku
[Coming Soon](#)

## Setup/Installation Requirements
#### Important Note: Running the RSPEC command will delete all images, for cleanliness, except for those in the spec/fixtures/images folder
#### Manual Testing Note: spec/fixtures/images folder (mentioned above) contains test photos to use in the app (optional)

* _In the Terminal, run:_
```
git clone https://github.com/JPCodes/flickr-clone-rails
cd flickr-clone-rails
bundle install
rake db:create
rake db:migrate
rails server
```
* _Then, in any modern browser, navigate to:_
```
localhost:3000
```
## Support and contact details

* _Github: [JPCodes](https://github.com/JPCodes)_
* _LinkedIn: [Jim Padilla](https://www.linkedin.com/in/jpcodes)_

## Technologies Used

* _Rails_
  * _Rspec_
  * _ActiveRecord_
  * _SimpleCov_
  * _FactoryGirl_
* _Ruby_
* _JavaScript_
* _Bootstrap_

### License

MIT

Copyright (c) 2016 **_Jim Padilla_**
