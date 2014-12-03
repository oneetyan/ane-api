module Ane
  module Cache
    module Null
      def self.call(key: , &block)
        block.call
      end
    end
  end
end
