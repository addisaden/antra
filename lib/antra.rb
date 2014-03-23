require "antra/version"
require "antra/paths"
require "antra/webapp"

module Antra
  def self.startup(port=8080, environment=:production)
    Antra::WebApp.environment = environment

    Antra::WebApp.bind = "localhost"
    Antra::WebApp.port = port

    puts
    puts "Antra is running on #{ Antra::WebApp.bind }:#{ Antra::WebApp.port } in #{ Antra::WebApp.environment }-mode"
    puts
    puts

    Antra::WebApp.run!
  end
end
