
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
      @user ||= Diver.find_by_id(session[:user_id])
      if @user.is_a?(Diver)
          @user    
      end
    end
        
    def add_validation_to_session(validation_hash)
      messages = validation_hash.keys.collect do |param|
        validation_hash[param].collect {|message| "#{param.to_s.capitalize} #{message}." }
      end
      add_messages_to_session messages.flatten
    end

    def add_messages_to_session(messages)
      flash[:message] = messages
    end

    def validation_messages
      flash[:message].join("<br>")
    end
    
  end

end
