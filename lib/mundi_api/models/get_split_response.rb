# mundi_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module MundiApi
  # Split response
  class GetSplitResponse < BaseModel
    # Type
    # @return [String]
    attr_accessor :type

    # Amount
    # @return [Integer]
    attr_accessor :amount

    # Recipient
    # @return [GetRecipientResponse]
    attr_accessor :recipient

    # The split rule gateway id
    # @return [String]
    attr_accessor :gateway_id

    # The split rule gateway id
    # @return [GetSplitOptionsResponse]
    attr_accessor :options

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['type'] = 'type'
      @_hash['amount'] = 'amount'
      @_hash['recipient'] = 'recipient'
      @_hash['gateway_id'] = 'gateway_id'
      @_hash['options'] = 'options'
      @_hash
    end

    def initialize(type = nil,
                   amount = nil,
                   gateway_id = nil,
                   recipient = nil,
                   options = nil)
      @type = type
      @amount = amount
      @recipient = recipient
      @gateway_id = gateway_id
      @options = options
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      type = hash['type']
      amount = hash['amount']
      gateway_id = hash['gateway_id']
      recipient = GetRecipientResponse.from_hash(hash['recipient']) if
        hash['recipient']
      options = GetSplitOptionsResponse.from_hash(hash['options']) if
        hash['options']

      # Create object from extracted values.
      GetSplitResponse.new(type,
                           amount,
                           gateway_id,
                           recipient,
                           options)
    end
  end
end
