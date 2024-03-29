# mundi_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module MundiApi
  # OrdersItemsRequest1 Model.
  class OrdersItemsRequest1 < BaseModel
    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :amount

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :description

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :quantity

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :category

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['amount'] = 'amount'
      @_hash['description'] = 'description'
      @_hash['quantity'] = 'quantity'
      @_hash['category'] = 'category'
      @_hash
    end

    def initialize(amount = nil,
                   description = nil,
                   quantity = nil,
                   category = nil)
      @amount = amount
      @description = description
      @quantity = quantity
      @category = category
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      amount = hash['amount']
      description = hash['description']
      quantity = hash['quantity']
      category = hash['category']

      # Create object from extracted values.
      OrdersItemsRequest1.new(amount,
                              description,
                              quantity,
                              category)
    end
  end
end
