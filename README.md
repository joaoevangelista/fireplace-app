<p align="center">
<img src="http://image0.flaticon.com/icons/svg/123/123452.svg" height="200"/>
</p>

# Fireplace
A [Firewatch](http://www.firewatchgame.com) inspired index application for fires and  incidents

Fireplace aims to help watchers, rangers and anyone to see incidents occurred on park and report news.

[![build status](https://gitlab.com/joaoevangelista/fireplace/badges/master/build.svg)](https://gitlab.com/joaoevangelista/fireplace/commits/master)

Development
---

Fireplace is built using Rails and RethinkDB, so here is what you are going to need:

- Ruby 2.2.4 +
- Rails Gem installed `gem install rails` (Current version 4.2.6)
- RethinkDB for your [platform](https://rethinkdb.com/docs/install/)
- If needed you can set `RETHINKDB_URL` to customize the url for RethinkDB.
- [Node.js](https://nodejs.org/en/download/) and Bower installed `npm i -g bower`

To use Google Maps you are going to need an API Key which you can find an excellent documentation on how to get and everything else on [their page](https://developers.google.com/maps/documentation/javascript/). Then set the `FIREPLACE_MAPS_KEY` environment variable with the value of your key.

Use the commands above to set up the project:
- `bundle install --without production` for gem dependencies
- `bower install` for asset dependencies
- `rake nobrainer:seed` to seed the Database
- `rails s` to serve

Then open your browser on [localhost:3000](localhost:3000)

[WIP] Testing
----

To keep the code beautiful we use RuboCop as static code analyzer, to run it you need to install via bundle or by running `gem install rubocop`, basic usages can be found on the [documentation](http://rubocop.readthedocs.io/en/latest/basic_usage/).

RSpec is powered by a Guard, to run it and all tests you use the following commands: `bundle exec guard` and it will start to watch your specs folder

Documentation
----

Check out Mkdocs [getting started](http://www.mkdocs.org/#getting-started)


Acknowledgement
-------------

Icons made by [Freepik](http://www.freepik.com) from [Flaticon](http://www.flaticon.com) and is licensed by [Creative Commons BY 3.0](http://creativecommons.org/licenses/by/3.0/)
