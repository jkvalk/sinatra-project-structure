require "bundler"
Bundler.require

Dir.glob("./app/helpers/*.rb").each { |f| require f }
require "./app/controllers/application_controller"
Dir.glob("./app/controllers/*.rb").each { |f| require f }
Dir.glob("./app/models/*.rb").each { |f| require f }
binding.pry

