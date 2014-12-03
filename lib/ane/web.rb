require 'json'
require 'sinatra/base'

module Ane
  class Web < Sinatra::Base
    helpers do
      def json(obj)
        content_type 'application/json; charset=utf-8' # XXX
        JSON.dump(obj)
      end
    end
  end
end
