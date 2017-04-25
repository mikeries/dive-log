class LocationController < ApplicationController

  get '/locations' do
    redirect to '/' unless logged_in?
    erb :'locations/index'
  end

  get '/locations/new' do
    redirect to '/' unless logged_in?
    erb :'locations/new'    
  end

  post '/locations' do
    redirect to '/' unless logged_in? 
    redirect to '/' unless location = Location.all.build(params[:location])
    if location.valid?
      location.save
      redirect to '/locations'
    else
      add_validation_to_session(location.errors.messages)
      redirect to '/locations/new'
    end
  end

  get '/locations/:slug' do
    redirect to '/' unless logged_in?
    redirect to '/' unless @location = Location.all.find_by_slug(params[:slug])

    erb :'locations/show'
  end
  
  patch '/locations/:slug' do
    redirect to '/' unless logged_in?
    redirect to '/' unless location = Location.all.find_by(params[:slug])

    if location.update(params[:location])
      redirect to "/locations/#{location.slug}"
    else
      add_validation_to_session(location.errors.messages)
      redirect to "/locations/#{location.slug}/edit"
    end
  end

  get '/locations/:slug/edit' do
    redirect to '/' unless logged_in?
    redirect to '/' unless @location = Location.all.find_by_slug(params[:slug])
    erb :'locations/edit'
  end

  delete '/locations/:slug/delete' do
    redirect to '/' unless logged_in?
    redirect to '/' unless location = Location.all.find_by_slug(params[:slug])
    location.delete
    redirect to '/locations'
  end

end