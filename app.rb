require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/places')

get('/') do # '/' root page (index /placesform)
  @places = Location.all() #creates an instance variable for where its going to go on the index page
  erb(:index)
end

post('/places_form') do
  place = params.fetch('places') # grabs input name='places'
  adventure = Location.new(place) # running input through class
  adventure.save() #saves to the all Location array
  erb(:places) # the views page that displays erb after submitting
end
