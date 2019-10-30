# mundi_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module MundiApi
  # CreatePhonesRequest Model.
  class CreatePhonesRequest < BaseModel
    # TODO: Write general description for this method
    # @return [CreatePhoneRequest]
    attr_accessor :home_phone

    # TODO: Write general description for this method
    # @return [CreatePhoneRequest]
    attr_accessor :mobile_phone

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['home_phone'] = 'home_phone'
      @_hash['mobile_phone'] = 'mobile_phone'
      @_hash
    end

    def initialize(home_phone = nil,
                   mobile_phone = nil)
      @home_phone = home_phone
      @mobile_phone = mobile_phone
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      home_phone = CreatePhoneRequest.from_hash(hash['home_phone']) if
        hash['home_phone']
      mobile_phone = CreatePhoneRequest.from_hash(hash['mobile_phone']) if
        hash['mobile_phone']

      # Create object from extracted values.
      CreatePhonesRequest.new(home_phone,
                              mobile_phone)
    end
  end
end
