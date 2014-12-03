module Ane
  module Cache
    module Null
      def self.call(&block)
        block.call
      end
    end
  end
end
