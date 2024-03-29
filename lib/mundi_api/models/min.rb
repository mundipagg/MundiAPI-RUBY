# mundi_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module MundiApi
  # Min Model.
  class Min < BaseModel
    # Amount
    # @return [Integer]
    attr_accessor :amount

    # Anticipation fee
    # @return [Integer]
    attr_accessor :anticipation_fee

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['amount'] = 'amount'
      @_hash['anticipation_fee'] = 'anticipation_fee'
      @_hash
    end

    def initialize(amount = nil,
                   anticipation_fee = nil)
      @amount = amount
      @anticipation_fee = anticipation_fee
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      amount = hash['amount']
      anticipation_fee = hash['anticipation_fee']

      # Create object from extracted values.
      Min.new(amount,
              anticipation_fee)
    end
  end
end
