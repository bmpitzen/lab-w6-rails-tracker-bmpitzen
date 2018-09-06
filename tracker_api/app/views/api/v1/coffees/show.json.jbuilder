json.links do
  json.self api_v1_coffee_url(@coffee)
  json.list api_v1_coffees_url
  json.update do
    json.method "PUT"
    json.href api_v1_coffee_url(@coffee)
  end
  json.delete do
    json.method "DELETE"
    json.href api_v1_coffee_url(@coffee)
  end
end
json.data do
  json.id @coffee.id
  json.attributes do
    json.blend_name @coffee.blend_name
    json.origin @coffee.origin
    json.variety @coffee.variety
    json.notes @coffee.notes
  end
end
