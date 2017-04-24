class LocationController < ApplicationController

  get '/locations' do
    erb :index
  end

end