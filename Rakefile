require "bundler/gem_tasks"

task :start do
  require "antra"

  Antra::WebApp.environment = :development

  Antra::WebApp.bind = "localhost"
  Antra::WebApp.port = 8080

  puts
  puts "Antra is running on #{ Antra::WebApp.bind }:#{ Antra::WebApp.port } in #{ Antra::WebApp.environment }-mode"
  puts
  puts

  Antra::WebApp.run!
end
