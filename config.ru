require "bundler"
Bundler.require

Dir.glob("./app/helpers/*.rb").each { |f| require f }
require "./app/controllers/application_controller"
Dir.glob("./app/controllers/*.rb").each { |f| require f }
Dir.glob("./app/models/*.rb").each { |f| require f }


Dir.glob("./app/{helpers,controllers,models}/*.rb").each { |f| require f }

map("/") { run proc { [200, {"Refresh" => "0; url=base"}, ['']] } }
map("/base") { run MyApp::Controllers::Main }
map("/auth") { run MyApp::Controllers::Auth }
