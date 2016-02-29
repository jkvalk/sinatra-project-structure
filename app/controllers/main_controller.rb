module MyApp
  module Controllers
    class Main < ApplicationController

      get "/" do
        @a = 10
        erb :home
      end

    end
  end
end
