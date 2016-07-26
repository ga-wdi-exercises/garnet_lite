require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pg'
require 'pry'
# Load the file to connect to the DB
require_relative 'db/connection'

# Load models
require_relative 'models/instructor'
require_relative 'models/student'

get '/' do
  redirect '/instructors'
end

get '/instructors' do
  @instructors = Instructor.all
  erb :"instructors/index"
end

get '/instructors/new' do
  erb :"instructors/new"
end

get '/instructors/:id' do
  @instructor = Instructor.find(params[:id])
  erb :"instructors/show"
end

post '/instructors' do
  instructor = Instructor.create(params[:instructor])
  redirect "/instructors/#{instructor.id}"
end

get '/instructors/:id/edit' do
  @instructor = Instructor.find(params[:id])
  erb :"instructors/edit"
end

put '/instructors/:id' do
  instructor = Instructor.find(params[:id])
  instructor.update(params[:instructor])
  redirect "/instructors/#{instructor.id}"
end

delete '/instructors/:id' do
  instructor = Instructor.find(params[:id])
  instructor.destroy
  redirect '/instructors'
end
