require "bundler"
Bundler.require

Dir.glob("./app/helpers/*.rb").each { |f| require f }
require "./app/controllers/application_controller"
Dir.glob("./app/controllers/*.rb").each { |f| require f }
Dir.glob("./app/models/*.rb").each { |f| require f }

app_root = "/main"
map("/") { run proc { [200, {"Refresh" => "0; url=#{app_root}"}, ['']] } }
map("#{app_root}") { run MyApp::Controllers::Main }

map("/auth") { run MyApp::Controllers::Auth }
