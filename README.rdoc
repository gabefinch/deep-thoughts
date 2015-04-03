# Deep Thoughts
This is a Rails app which allows one to create deep thoughts and to comment on existing deep thoughts.
Partial test coverage with Rspec and Capybara integration tests.  Added Devise user authentication the next week.
Built in around 6 hours.

Try it [here](https://murmuring-savannah-5593.herokuapp.com/)

## Requirements
Rails

## Setup Instructions:

Clone repository.
```
$ rake db:create db:migrate db:seed
```
Within project folder create an .env file with your Twilio credentials
```
TWILIO_ACCOUNT_SID=XXXXXXXXXXXX
TWILIO_AUTH_TOKEN=XXXXXXXXXXXXX
TWILIO_PHONE_NUM=XXXXXXXXXXXXX
```


```
$ rails s
```

### Bug Reports:
```
None known
```
### Author:
Gabe Finch
#### License
MIT
