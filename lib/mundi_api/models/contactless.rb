# mundi_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module MundiApi
  # Contactless Model.
  class Contactless < BaseModel
    # The authentication type
    # @return [String]
    attr_accessor :type

    # The authentication type
    # @return [ApplePay]
    attr_accessor :apple_pay

    # The authentication type
    # @return [GooglePay]
    attr_accessor :google_pay

    # The authentication type
    # @return [CreateEmvDecryptRequest]
    attr_accessor :emv

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['type'] = 'type'
      @_hash['apple_pay'] = 'apple_pay'
      @_hash['google_pay'] = 'google_pay'
      @_hash['emv'] = 'emv'
      @_hash
    end

    def initialize(type = nil,
                   apple_pay = nil,
                   google_pay = nil,
                   emv = nil)
      @type = type
      @apple_pay = apple_pay
      @google_pay = google_pay
      @emv = emv
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      type = hash['type']
      apple_pay = ApplePay.from_hash(hash['apple_pay']) if hash['apple_pay']
      google_pay = GooglePay.from_hash(hash['google_pay']) if
        hash['google_pay']
      emv = CreateEmvDecryptRequest.from_hash(hash['emv']) if hash['emv']

      # Create object from extracted values.
      Contactless.new(type,
                      apple_pay,
                      google_pay,
                      emv)
    end
  end
end
