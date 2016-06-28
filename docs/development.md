# Development


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

Then open your browser on [localhost:3000](http://localhost:3000)
