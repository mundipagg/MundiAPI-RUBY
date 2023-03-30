# mundi_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MundiApi
  # Response object for getting a billing address
  class GetBillingAddressResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :street

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :number

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :zip_code

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :neighborhood

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :city

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :state

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :country

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :complement

    # Line 1 for address
    # @return [String]
    attr_accessor :line_1

    # Line 2 for address
    # @return [String]
    attr_accessor :line_2

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['street'] = 'street'
      @_hash['number'] = 'number'
      @_hash['zip_code'] = 'zip_code'
      @_hash['neighborhood'] = 'neighborhood'
      @_hash['city'] = 'city'
      @_hash['state'] = 'state'
      @_hash['country'] = 'country'
      @_hash['complement'] = 'complement'
      @_hash['line_1'] = 'line_1'
      @_hash['line_2'] = 'line_2'
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

    def initialize(street = nil,
                   number = nil,
                   zip_code = nil,
                   neighborhood = nil,
                   city = nil,
                   state = nil,
                   country = nil,
                   complement = nil,
                   line_1 = nil,
                   line_2 = nil)
      @street = street
      @number = number
      @zip_code = zip_code
      @neighborhood = neighborhood
      @city = city
      @state = state
      @country = country
      @complement = complement
      @line_1 = line_1
      @line_2 = line_2
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      street = hash.key?('street') ? hash['street'] : nil
      number = hash.key?('number') ? hash['number'] : nil
      zip_code = hash.key?('zip_code') ? hash['zip_code'] : nil
      neighborhood = hash.key?('neighborhood') ? hash['neighborhood'] : nil
      city = hash.key?('city') ? hash['city'] : nil
      state = hash.key?('state') ? hash['state'] : nil
      country = hash.key?('country') ? hash['country'] : nil
      complement = hash.key?('complement') ? hash['complement'] : nil
      line_1 = hash.key?('line_1') ? hash['line_1'] : nil
      line_2 = hash.key?('line_2') ? hash['line_2'] : nil

      # Create object from extracted values.
      GetBillingAddressResponse.new(street,
                                    number,
                                    zip_code,
                                    neighborhood,
                                    city,
                                    state,
                                    country,
                                    complement,
                                    line_1,
                                    line_2)
    end
  end
end
