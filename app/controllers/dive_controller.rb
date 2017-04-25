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
    dive = current_user.dives.build(params[:dive])
    if dive.valid?
      current_user.save
      redirect to '/dives'
    else
      add_validation_to_session(dive.errors.messages)

      # IDEA - store params[:dive] in the session and use it to repopulate fields
      # so that the user doesn't have to type everything in again?
      redirect to '/dives/new'
    end
  end

  get '/dives/:id' do
    redirect to '/' if !logged_in?
    erb :'dives/show'
  end
  
  post '/dives/:id' do
    redirect to '/' if !logged_in?  
  end

  get '/dives/:id/edit' do
    redirect to '/' if !logged_in?
    erb :'dives/edit'
  end

  post '/dives/:id/delete' do
    redirect to '/' if !logged_in? 
  end

end
