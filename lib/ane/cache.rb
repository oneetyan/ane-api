require 'ane/cache/null'
require 'ane/cache/memcached'

module Ane
  module Cache
    STRATEGIES = {
      null: Null,
      memcached: Memcached,
    }.freeze

    def self.find_strategy(name)
      STRATEGIES[name]
    end
  end
end
