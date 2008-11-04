require File.join(File.dirname(__FILE__), '../deprecation')

module ROXML
  module CoreExtensions
    module Array #:nodoc:
      module Conversions
        # Translates an array into a hash, where each element of the array is
        # an array with 2 elements:
        #
        #   >> [[:key, :value], [1, 2], ['key', 'value']].to_h
        #   => {:key => :value, 1 => 2, 'key' => 'value'}
        #
        def to_hash
          inject({}) do |result, (k, v)|
            result[k] = v
            result
          end
        end

        def to_h #:nodoc:
          ActiveSupport::Deprecation.warn "Please use #to_hash instead"
          to_hash
        end
      end
    end
  end
end