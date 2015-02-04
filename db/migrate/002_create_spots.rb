migration 2, :create_spots do
  up do
    create_table :spots do
      column :id, Integer, :serial => true
      column :title, DataMapper::Property::String, :length => 255
      column :address, DataMapper::Property::String, :length => 255
      column :longitude, DataMapper::Property::Integer
      column :latitude, DataMapper::Property::Integer
      column :description, DataMapper::Property::Text
    end
  end

  down do
    drop_table :spots
  end
end
