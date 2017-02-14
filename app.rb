require 'sinatra'
require "sinatra/json"
require 'json'

get '/' do
  'Hello new world!'
end

get '/sample.json' do
  json get_json("response/sample.json")
end
