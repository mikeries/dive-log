class DiveController < ApplicationController

  get '/dives' do
    redirect to '/' unless logged_in?

    erb :'dives/index'
  end

  get '/dives/new' do
    redirect to '/' unless logged_in?
    erb :'dives/new'    
  end

  post '/dives' do
    redirect to '/' unless logged_in?
    dive = current_user.dives.build(params[:dive])
    if dive.valid?
      dive.save
      redirect to '/dives'
    else
      add_validation_to_session(dive.errors.messages)

      # IDEA - store params[:dive] in the session and use it to repopulate fields
      # so that the user doesn't have to type everything in again?
      redirect to '/dives/new'
    end
  end

  get '/dives/:id' do
    redirect to '/' unless logged_in?
    redirect to '/' unless @dive = current_user.dives.find_by(id: params[:id])

    erb :'dives/show'
  end
  
  patch '/dives/:id' do
    redirect to '/' unless logged_in?
    redirect to '/' unless dive = current_user.dives.find_by(id: params[:id])

    if dive.update(params[:dive])
      redirect to "/dives/#{dive.id}"
    else
      add_validation_to_session(dive.errors.messages)
      redirect to "/dives/#{dive.id}/edit"
    end
  end

  get '/dives/:id/edit' do
    redirect to '/' unless logged_in?
    redirect to '/' unless @dive = current_user.dives.find_by(id: params[:id])
    erb :'dives/edit'
  end

  delete '/dives/:id/delete' do
    redirect to '/' unless logged_in?
    redirect to '/' unless dive = current_user.dives.find_by(id: params[:id])
    dive.delete
    redirect to '/dives'
  end

end
