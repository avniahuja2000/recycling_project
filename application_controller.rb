require_relative './models/model.rb'
require 'bundler'
Bundler.require

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/full_list' do
    erb :full_list
  end

  get '/bin_list' do
    @recycle1 = Recycle.new
    @recycle1.address = params[:input_address]
    @recycle1.plastic = params[:input_plastic]
    erb :bin_list
  end
end