require('rspec')
require('places')

describe(Location) do
  before() do
    Location.clear()
  end
  describe("#place") do
    it("Lets you input a location") do
    test_location = Location.new("Portland")
    expect(test_location.place()).to(eq("Portland"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Location.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a location to the array of saved location") do
    test_location = Location.new("Vancouver")
    test_location.save()
    expect(Location.all()).to(eq([test_location]))
    end
  end
  describe(".clear") do
    it("empties out all saved locations") do
    Location.new("Texas").save()
    Location.clear()
    expect(Location.all()).to(eq([]))
    end
  end
end
