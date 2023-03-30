# mundi_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MundiApi
  # Request for creating a device
  class CreateDeviceRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Device's platform
    # @return [String]
    attr_accessor :platform

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['platform'] = 'platform'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        platform
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(platform = SKIP)
      @platform = platform unless platform == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      platform = hash.key?('platform') ? hash['platform'] : SKIP

      # Create object from extracted values.
      CreateDeviceRequest.new(platform)
    end
  end
end
