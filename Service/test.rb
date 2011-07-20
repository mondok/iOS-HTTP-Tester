require 'sinatra'

get "/" do
  "It works!"
end

get '/hello' do
  "Hello World!"
end

post "/send" do
  request.body.rewind
  request.body.read
end