# Hello Mail

So I was tired of doing different stuff to test email configuration on
my many environments so I came up with this simple Rake task to send
me a test email.

## Installation

### Rails 3

Include it on your Gemfile

    gem 'hello_mail'

And then run:

    bundler install

### Other versions of Rails

Nope, this gem is just for Rails 3

## Usage

Simply run the rake task passing the destination mail address as a
parameter, for example:

    rake hello_mail:deliver[david@crowdint.com]

If your mail configuration works, you shall receive a message
immediately.

Be careful if you have different environments configured on your server.
If you run your app in production mode, then you should run the rake
task as:

    RAILS_ENV=production rake hello_mail:deliver[david@crowdint.com]

That's it!

# About the Author

[Crowd Interactive](http://www.crowdint.com) is an American web design and development company that happens to work in Colima, Mexico. 
We specialize in building and growing online retail stores. We don’t work with everyone – just companies we believe in. Call us today to see if there’s a fit.
Find more info [here](http://www.crowdint.com)!
