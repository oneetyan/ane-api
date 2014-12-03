require 'dalli'

module Ane
  module Cache
    module Memcached
      MEMCACHED_HOST = 'localhost'
      MEMCACHED_PORT = 11211

      class << self
        def call(key: , ttl: nil, &block)
          warn 'memcached'
          self.client.fetch(key, ttl, nil, &block)
        end

        def client
          @client ||= Dalli::Client.new("#{MEMCACHED_HOST}:#{MEMCACHED_PORT}", namespace: 'ane_v0', compress: true)
        end
      end
    end
  end
end
