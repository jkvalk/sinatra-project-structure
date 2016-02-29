module MyApp
  module Controllers
    class Auth < ApplicationController
      helpers Helpers::Auth

      get "/" do
        erb :home
      end

    end
  end
end
