require 'spec_helper'

ENV['RACK_ENV'] = 'test'
require 'rack/test'

include Rack::Test::Methods

def app
    Sinatra::Application
end

describe "Application" do
  subject(:response) { get '/' }
  it "should return json" do
    expect(response.headers['Content-Type']).to match(/^application\/json.*/)
  end

  it "should return utf-8 encoded document" do
    expect(response.headers['Content-Type']).to match(/.*;charset=utf-8$/)
  end

  it "should return greeting" do
    expect(response.body).to eq({greeting: proper_greeting}.to_json)
  end
end
