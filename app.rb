require 'sinatra'
require "sinatra/json"
require 'json'

get '/' do
  'Hello world???'
end

get '/sample.json' do
  json get_json("response/sample.json")
end
