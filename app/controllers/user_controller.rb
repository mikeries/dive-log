class UserController < ApplicationController

  get '/login' do
    erb :'users/login'
  end

  post '/login' do
    diver = Diver.find_by(:email => params[:email])

    session[:error_messages] = []
    if !diver
      add_error "Unknown diver. Please enter your email and password again, or sign up."
      redirect to '/login'
    elsif !diver.authenticate(params[:password])
      add_error "Incorrect password. Please try again."
      redirect to "/login"
    else
      session["diver_id"] = diver.id
      redirect to "/divers"
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