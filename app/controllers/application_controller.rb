module MyApp
  module Controllers
    class ApplicationController < Sinatra::Base
      helpers Helpers::ApplicationHelper

      before do
        warn "#{settings.root}/../views#{request.path}"
        self.class.set :views, "#{settings.root}/../views#{request.path}"
      end

      configure do
        #set :views, File.expand_path("../../views", __FILE__)
      end

      configure :development do
      end

      configure :production do
      end

      get "/" do
        redirect "/base"
      end

    end
  end
end
