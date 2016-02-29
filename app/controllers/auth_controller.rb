module MyApp
  module Controllers
    class Auth < ApplicationController
      helpers Helpers::Auth

      get "/" do
        erb :login
      end

    end
  end
end
