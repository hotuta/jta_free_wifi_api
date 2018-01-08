json.array! @spots do |spot|
  if params[:language] === 'en'
    json.name_en spot.name_en
    json.address_en spot.address_en
  else
    json.name_jp spot.name_jp
    json.address_jp spot.address_jp
  end
  json.distance spot.distance_to([params[:lat], params[:lng]])
end
