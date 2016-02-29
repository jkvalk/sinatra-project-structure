require "bundler"
Bundler.require

Dir["app/helpers/*.rb"].each { |f| require_relative f }
Dir["app/controllers/application_controller.rb"].each { |f| require_relative f }
Dir["app/controllers/*.rb"].each { |f| require_relative f }
Dir["app/models/*.rb"].each { |f| require_relative f }
