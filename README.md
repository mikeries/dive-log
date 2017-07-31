# Dive Logger

A demo of this application can be found here: [Sinatra Dive Log.](https://sinatra-dive-log.herokuapp.com/)  Note that because the hosting service (Heroku) sleeps idle applications, this link may take several seconds to load.

If you're a SCUBA diver, you know that there's a lot of information to keep track of.  This app provides you the ability to store those data on the web, where you can access it from anywhere.  Even if you forget your diving logbook.  I'm sure that's never happened to you.

For safety reasons, each diver is identified by their email address and a password.  Once logged in, a Diver can add new locations, and keep track of their dives, including the key parameters of location, max_depth, duration, initial tank pressure, final tank pressures, ballast, etc.  Many other parameters are possible, as well.

Locations can be added by any registered Diver, but can only be modified or deleted if there are no Dives associated with that location.

## Installation

To use the app, clone the repository, bundle install, and run shotgun.  Then point your browser to localhost:9393 and you're good to go.

## Development

After checking out the repo, run `bundle install` to install dependencies. You can also run `rake console` for an interactive prompt that will allow you to experiment.

There are many ways in which this app can grow... more information on conditions, list of equipment used, graphs of air effieciency, list of people who have dived each location, diver comments for each dive location, GPS coords and maps for locations, etc...  but for now I need to move forward with my curriculum.  There's a good chance I'll return to this project and possibly migrate it to rails.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'michaelries-61193'/todays_baseball. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
