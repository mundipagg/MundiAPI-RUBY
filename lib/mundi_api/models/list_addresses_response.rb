# mundi_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module MundiApi
  # Response object for listing addresses
  class ListAddressesResponse < BaseModel
    # The address objects
    # @return [List of GetAddressResponse]
    attr_accessor :data

    # Paging object
    # @return [PagingResponse]
    attr_accessor :paging

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['data'] = 'data'
      @_hash['paging'] = 'paging'
      @_hash
    end

    def initialize(data = nil,
                   paging = nil)
      @data = data
      @paging = paging
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      data = nil
      unless hash['data'].nil?
        data = []
        hash['data'].each do |structure|
          data << (GetAddressResponse.from_hash(structure) if structure)
        end
      end
      paging = PagingResponse.from_hash(hash['paging']) if hash['paging']

      # Create object from extracted values.
      ListAddressesResponse.new(data,
                                paging)
    end
  end
end
