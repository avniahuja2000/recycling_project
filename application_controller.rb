require_relative './models/model.rb'
require 'bundler'
Bundler.require

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/full_list' do
    "Hello World"
  end

  post '/bin_results' do
    zip_code = params[:input_zip_code]
    zip_code = zip_code.to_i
    @recycle1 = Recycle.new(zip_code)
    @results = @recycle1.return_bins
#     @recycle1.address = params[:input_address]
#     @recycle1.plastic = params[:input_plastic]
    erb :bin_results
  end
end