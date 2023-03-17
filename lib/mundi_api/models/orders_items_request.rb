# mundi_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module MundiApi
  # OrdersItemsRequest Model.
  class OrdersItemsRequest < BaseModel
    # Amount
    # @return [Integer]
    attr_accessor :amount

    # Description
    # @return [String]
    attr_accessor :description

    # Quantity
    # @return [Integer]
    attr_accessor :quantity

    # Category
    # @return [String]
    attr_accessor :category

    # The item code passed by the client
    # @return [String]
    attr_accessor :code

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['amount'] = 'amount'
      @_hash['description'] = 'description'
      @_hash['quantity'] = 'quantity'
      @_hash['category'] = 'category'
      @_hash['code'] = 'code'
      @_hash
    end

    def initialize(amount = nil,
                   description = nil,
                   quantity = nil,
                   category = nil,
                   code = nil)
      @amount = amount
      @description = description
      @quantity = quantity
      @category = category
      @code = code
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      amount = hash['amount']
      description = hash['description']
      quantity = hash['quantity']
      category = hash['category']
      code = hash['code']

      # Create object from extracted values.
      OrdersItemsRequest.new(amount,
                             description,
                             quantity,
                             category,
                             code)
    end
  end
end
