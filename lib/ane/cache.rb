require 'ane/cache/null'

module Ane
  module Cache
    STRATEGIES = {
      null: Null,
    }.freeze

    def self.find_strategy(name)
      STRATEGIES[name]
    end
  end
end
