json.array! @coffees do |coffee|
  json.extract! coffee, :id, :blend_name, :origin, :variety, :notes
end
