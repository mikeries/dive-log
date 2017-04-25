class UserController < ApplicationController

  get '/login' do
    erb :'users/login'
  end

  post '/login' do
    diver = Diver.find_by(:email => params[:email])

    if !diver
      add_validation_to_session ({diver: "unknown. Please enter your email and password again, or sign up"})
      redirect to '/login'
    elsif !diver.authenticate(params[:password])
      add_validation_to_session ({password: "incorrect. Please try again"})
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
      add_validation_to_session(diver.errors)
      redirect to '/signup'
    end

    if (Diver.find_by(email: diver.email))
      add_validation_to_session({email: "has already been created.  Please log in"})
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