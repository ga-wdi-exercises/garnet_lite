require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

# Load the file to connect to the DB
require_relative 'db/connection'

# Load models
require_relative 'models/instructor'
require_relative 'models/student'

get '/' do
  "hello"
end
