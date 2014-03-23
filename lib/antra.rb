require "antra/version"
require "antra/paths"
require "sinatra"

module Antra
  class WebApp < Sinatra::Base
    set :views, Path.gem_path('views')

    get "/" do
      erb :index
    end
  end
end
