require 'uri'
require 'net/http'

# Test add user
uri = URI('http://127.0.0.1:4567/users')
res = Net::HTTP.post_form(uri, 'name' => 'Sami', 'age' => '17')

puts res.body

# Test get all users
uri = URI('http://127.0.0.1:4567/users')
res = Net::HTTP.get_response(uri)

puts res.body
