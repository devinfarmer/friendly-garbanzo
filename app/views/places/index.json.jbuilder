json.array!(@places) do |place|
  json.extract! place, :id, :name, :address1, :address2, :address3, :address4, :city, :state, :zip, :phone1, :phone2, :phone3, :phone4, :manager, :comments
  json.url place_url(place, format: :json)
end
