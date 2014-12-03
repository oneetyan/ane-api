require 'ane/web'
require 'ane/fetcher/i401_data'

module Ane
  class Web
    class API < Ane::Web
      get '/v0/ane' do
        candidates = Ane::Fetcher::I401Data.fetch_all
        json ok: true, ane: candidates
      end
    end
  end
end
