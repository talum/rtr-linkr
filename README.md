# RTR LINKR

An application to shorten links and redirect them, while tracking the usage
of each link.

Any user can enter a URL. The application will generate a unique slug for
each link. The application will redirect those unique links to the original
URL and track the usage..

The `root_url` would be changed to `rtr.co` in a production environment.


#Setup
*  Clone down the repo
* `bundle install`
*  Make sure postgres is running
*  Run migrations
*  Start the server with `rails s` 
