class DiveController < ApplicationController

  get '/dives' do
    redirect to '/' if !logged_in?
    @diver = current_user
    erb :'dives/index'
  end

  get '/dives/new' do
    redirect to '/' if !logged_in?
    erb :'dives/new'    
  end

  post '/dives' do
    redirect to '/' if !logged_in?
  end

  get '/dives/:slug' do
    redirect to '/' if !logged_in?
    erb :'dives/show'
  end
  
  post '/dives/:slug' do
    redirect to '/' if !logged_in?  
  end

  get '/dives/:slug/edit' do
    redirect to '/' if !logged_in?
    erb :'dives/edit'
  end

  post '/dives/:slug/delete' do
    redirect to '/' if !logged_in? 
  end

end
