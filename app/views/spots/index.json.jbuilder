json.array! @spots do |spot|
  json.name_jp spot.name_jp
  json.address_jp spot.address_jp
  json.distance spot.distance_to([params[:lat], params[:lng]])
end
