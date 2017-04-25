class UserController < ApplicationController

  get '/login' do
    erb :'users/login'
  end

  post '/login' do
    diver = Diver.find_by(:email => params[:email])
  	if diver && diver.authenticate(params[:password])
      session["diver_id"] = diver.id
      redirect to "/divers"
    else
      redirect to "/login"
    end
  end
  
  get '/signup' do
    erb :'users/signup'
  end

  post '/signup' do
  end

  get '/logout' do
    session.clear if logged_in?
    redirect to '/'
  end

end