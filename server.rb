require 'sinatra'


get '/' do
  redirect to('/home')
end

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

get '/favorites' do
    @favorites = ['www.cnn.com','www.bbc.com']
    erb :favorites
end

#When responding to an HTTP request we have another option besides rendering an ERB view (i.e. with erb :name_of_file). We can instead choose to redirect our user to a different route. Redirecting means the server sends a brand new get request to one of its other routes.
