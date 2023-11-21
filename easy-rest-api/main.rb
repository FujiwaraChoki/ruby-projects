require 'sinatra'

# Define the users array
users = []

get '/' do
  # Simple endpoint to test if the server is running
  "Hello World!"
end

# Get all users
get '/users' do
  # Return the users array
  users.to_json
end

# Create a new user
post '/users' do
  # Retrieve user data from request body
  user = {
    name: params[:name],
    age: params[:age]
  }

  # Add user to users array
  users << user

  # Return success message
  "User created successfully!"
end
