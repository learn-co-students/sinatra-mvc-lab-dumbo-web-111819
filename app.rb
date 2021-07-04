require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        #binding.pry
        piglatin=PigLatinizer.new
        #binding.pry
        @output=piglatin.piglatinize(params[:user_phrase])
        erb :results
    end
    
    post '/piglatinize' do
        #binding.pry
        piglatin=PigLatinizer.new
        #binding.pry
        @output=piglatin.piglatinize(params[:user_phrase])
        erb :results
    end
end