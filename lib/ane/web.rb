require 'json'
require 'sinatra/base'

module Ane
  class Web < Sinatra::Base
    helpers do
      def json(obj)
        content_type :json
        JSON.dump(obj)
      end
    end
  end
end
