class LocationController < ApplicationController

  get '/locations' do
    erb :'locations/index'
  end

  get '/locations/new' do
    erb :'locations/new'    
  end

  post '/locations' do
  end

  get '/locations/:slug' do
    erb :'locations/show'
  end
  
  post '/locations/:slug' do
  end

  get '/locations/:slug/edit' do
    erb :'locations/edit'
  end

  post '/locations/:slug/delete' do
  end

end