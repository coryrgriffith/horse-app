require 'unirest'

# create new horse
# response = Unirest.post("localhost:3000/api/horses",
#   parameters: {
#     input_name: "Equine Rex",
#     input_breed: "Part Dinosaur",
#     input_color: "Scaly",
#     input_weight: "5000"
#   }
# )

# p response.body

# update a horse
# response = Unirest.patch("localhost:3000/api/horses/1",
#   parameters: {
#     input_name: "Yolanda",
#     input_breed: "Palamino",
#     input_color: "Tan",
#     input_weight: "1500"
#   }
# )

# p response.body

# delete a horse
p "which horse would you like to delete? (enter horse id)"
horse_id = gets.chomp
response = Unirest.delete("localhost:3000/api/horses/#{horse_id}")
p response.body