class Location

@@all_locations = []

  define_method(:initialize) do |place|
    @place = place
  end
  define_method(:place)do
    @place
  end
  define_singleton_method(:all) do
    @@all_locations
  end
  define_method(:save) do
    @@all_locations.push(self)
  end
  define_singleton_method(:clear) do
    @@all_locations = []
  end
end
