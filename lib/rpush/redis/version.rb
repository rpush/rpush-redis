module Rpush
  module Redis
    module VERSION
      MAJOR = 1
      MINOR = 0
      TINY = 1
      PRE = nil

      STRING = [MAJOR, MINOR, TINY, PRE].compact.join(".").freeze

      def self.to_s
        STRING
      end
    end
  end
end
