require 'open-uri'
require 'uri'

module Ane
  module Fetcher
    module I401Data
      DATA_URI         = URI.parse('https://raw.githubusercontent.com/wiki/wakaba/i401/Data.md')
      ANE_LINE_PATTERN = /\A姉/

      def self.fetch_all
        lines = self.data_uri.read.split(/\r?\n/)
        ane_line = lines.find {|line| ANE_LINE_PATTERN === line }
        return [] unless ane_line
        _, candidates = ane_line.split('=', 2)
        candidates.split('|')
      end

      def self.data_uri
        DATA_URI
      end
    end
  end
end
