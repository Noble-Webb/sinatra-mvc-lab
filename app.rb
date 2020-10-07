require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end
    
    post '/piglatinize' do
        plat = PigLatinizer.new
        @user_phrase = plat.piglatinize(params[:user_phrase])
        erb :piglatinize
    end

end