require 'ane/web'
require 'ane/fetcher/i401_data'

module Ane
  class Web
    class API < Ane::Web
      get '/v0/ane' do
        candidates = Ane::Fetcher::I401Data.fetch_all(cache_strategy: :memcached)
        json ok: true, ane: candidates
      end

      get '/v0/ane/sample' do
        candidates = Ane::Fetcher::I401Data.fetch_all(cache_strategy: :memcached)
        sampled = candidates.sample
        json ok: true, ane: sampled
      end
    end
  end
end
