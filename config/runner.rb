require 'http'

# Index Action

# response = HTTP.get("http://localhost:3000/api/recipes",
#                     )
# p response.parse

# Show Action

# response = HTTP.get("http://localhost:3000/api/recipes")
# p response.parse

# Create Action

client_params = {}

print "Title: "
client_params[:title] = gets.chomp
print "Chef: "
client_params[:chef] = gets.chomp
print "Prep TIme: "
client_params[:prep_time] = gets.chomp
print "Ingredients:"
client_params[:ingredients] = gets.chomp
print "Directions:"
client_params[:directions] = gets.chomp
print "Image URL: "
client_params[:image_url] = gets.chomp

p client_params

# response = HTTP.post(
#                       "http://localhost:3000/api/recipes"
#                       form: client_params
#                     )

response = HTTP.post(
                    "http://localhost:3000/api/recipes", 
                    form:{
                        title: "Bubble Gum",
                        chef: "Josh",
                        prep_time: 5,
                        ingredients: "wrapped gum",
                        directions: "unwrap gum",
                        image_url: "gum url..."
                    }
                )

