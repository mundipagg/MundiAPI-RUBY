# mundi_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MundiApi
  # The payment authentication request
  class CreatePaymentAuthenticationRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The Authentication type
    # @return [String]
    attr_accessor :type

    # The 3D-S authentication object
    # @return [CreateThreeDSecureRequest]
    attr_accessor :threed_secure

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['type'] = 'type'
      @_hash['threed_secure'] = 'threed_secure'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(type = nil,
                   threed_secure = nil)
      @type = type
      @threed_secure = threed_secure
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      type = hash.key?('type') ? hash['type'] : nil
      threed_secure = CreateThreeDSecureRequest.from_hash(hash['threed_secure']) if
        hash['threed_secure']

      # Create object from extracted values.
      CreatePaymentAuthenticationRequest.new(type,
                                             threed_secure)
    end
  end
end
