class Spot
  include DataMapper::Resource

  # property <name>, <type>
  property :id, Serial
  property :title, String
  property :address, String
  property :longitude, Integer
  property :latitude, Integer
  property :description, Text
end
