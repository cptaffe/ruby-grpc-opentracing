module GRPC
  module OpenTracing
    class HPACKCarrier
      def initialize(wrapped)
        @wrapped = wrapped
      end

      def [](key)
        @wrapped[key.downcase]
      end

      def []=(key, value)
        return unless value

        @wrapped[key.downcase] = value
      end

      def each(&block)
        @wrapped.each(&block)
      end
    end
  end
end
