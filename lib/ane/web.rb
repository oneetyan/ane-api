require 'json'
require 'sinatra/base'

module Ane
  class Web < Sinatra::Base
    configure :development do
      require 'sinatra/reloader'
      register Sinatra::Reloader
    end

    helpers do
      def json(obj)
        content_type 'application/json; charset=utf-8' # XXX
        JSON.dump(obj)
      end
    end
  end
end
