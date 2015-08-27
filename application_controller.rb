require_relative './models/model.rb'
require 'bundler'
Bundler.require

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/full_results' do
    erb :full_list
  end

  post '/bin_results' do
    @recycle1 = Recycle.new(params[:input_address], params[:input_plastic])
    @recycle1.address = params[:input_address]
    @recycle1.plastic = params[:input_plastic]
    erb :bin_results
  end
end