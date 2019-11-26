require 'sinatra/base'

# set :session_secret, "here be dragons"

class Battle < Sinatra::Base

  get '/' do
    "Testing infrastructure working!"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end