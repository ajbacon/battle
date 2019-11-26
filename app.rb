require 'sinatra/base'

# set :session_secret, "here be dragons"

class Battle < Sinatra::Base

  get '/' do
    "Hello Battle!"
  end


  run! if app_file == $0
end