require 'ane/web'

module Ane
  class Web
    class API < Ane::Web
      get '/v0/ane' do
        ane = %w(姉)
        json ok: true, ane: ane
      end
    end
  end
end
