require 'greeter'

require 'sinatra'
require 'json'

get '/' do
  content_type :json, charset: 'utf-8'
  { greeting: RSpecGreeter.new.greet }.to_json
end
