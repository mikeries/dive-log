
require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
		set :session_secret, "password_security"
  end

  get '/' do
    erb :index
  end

  helpers do
    def logged_in?
      !!Diver.find_by_id(session[:user_id])
    end

    def current_user
      @user = Diver.find_by_id(session[:user_id])
      if @user.is_a?(User)
          @user    
      end
    end
  end

end
