module MyApp
  module Controllers
    class ApplicationController < Sinatra::Base
      helpers Helpers::ApplicationHelper

      before do
        self.class.set :views, "#{settings.root}/../views#{request.path}"
      end

      configure do
        ;
      end
      configure :'sinatra-project-structure' do
        ;
      end
      configure :development do
        ;
      end
      configure :production do
        ;
      end

    end
  end
end
