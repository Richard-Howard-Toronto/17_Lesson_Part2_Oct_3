require 'sinatra'

get '/home' do
  erb :index
end

get '/gallery' do
  erb :gallery
end

get '/about_me' do
    @skills = ['git', 'HTML', 'CSS', 'Ruby']
    @interests = ['cats', 'art', 'music', 'films', 'coffee']
  erb :about_me
end
