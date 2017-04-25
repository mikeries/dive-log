
require './config/environment'
require 'rack-flash'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
		set :session_secret, "password_security"
    use Rack::Flash
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
      if @user.is_a?(Diver)
          @user    
      end
    end
        
    def add_validation_to_session(errors)
      flash[:message] = errors
    end

    def validation_messages
      flash[:message].collect { |k,v| "#{k.to_s.capitalize} #{v}." }.join("\n")
    end
    
  end

end
