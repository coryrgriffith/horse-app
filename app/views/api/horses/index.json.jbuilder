json.array! @horses.each do |horse|
  json.id horse.id
  json.name horse.name
  json.breed horse.breed
  json.color horse.color
  json.weight horse.weight
end