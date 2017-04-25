class UserController < ApplicationController

  get '/login' do
    erb :'users/login'
  end

  post '/login' do
    diver = Diver.find_by(:email => params[:email])

    if !diver
      flash[:message] = "Unknown diver. Please enter your email and password again, or sign up."
      redirect to '/login'
    elsif !diver.authenticate(params[:password])
      flash[:message] = "Incorrect password. Please try again."
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
    diver = Diver.new(params[:diver])
    if diver.invalid?
      # add_validation_to_session
      redirect to '/signup'
    end

    if (Diver.find_by(email: diver.email))
      # message: diver already exists
      redirect to '/signup'
    end
    
    diver.save
    redirect to '/'

  end

  get '/logout' do
    session.clear if logged_in?
    redirect to '/'
  end

end