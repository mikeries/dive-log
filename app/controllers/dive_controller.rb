class DiveController < ApplicationController

  get '/dives' do
    erb :'dives/index'
  end

  get '/dives/new' do
    erb :'dives/new'    
  end

  post '/dives' do
  end

  get '/dives/:slug' do
    erb :'dives/show'
  end
  
  post '/dives/:slug' do
  end

  get '/dives/:slug/edit' do
    erb :'dives/edit'
  end

  post '/dives/:slug/delete' do
  end

end
