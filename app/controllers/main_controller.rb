module MyApp
  module Controllers
    class Main < ApplicationController
      helpers Helpers::Main
      get "/" do
        @a = 10
        erb :home
      end

    end
  end
end
