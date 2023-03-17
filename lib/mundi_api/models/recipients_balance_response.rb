# mundi_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module MundiApi
  # RecipientsBalanceResponse Model.
  class RecipientsBalanceResponse < BaseModel
    # Currency
    # @return [String]
    attr_accessor :currency

    # Amount available for transferring
    # @return [Long]
    attr_accessor :available_amount

    # Amount available for transferring
    # @return [Recipient]
    attr_accessor :recipient

    # Amount available for transferring
    # @return [Long]
    attr_accessor :waiting_funds_amount

    # Amount available for transferring
    # @return [Long]
    attr_accessor :transferred_amount

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['currency'] = 'currency'
      @_hash['available_amount'] = 'available_amount'
      @_hash['recipient'] = 'recipient'
      @_hash['waiting_funds_amount'] = 'waiting_funds_amount'
      @_hash['transferred_amount'] = 'transferred_amount'
      @_hash
    end

    def initialize(currency = nil,
                   available_amount = nil,
                   waiting_funds_amount = nil,
                   transferred_amount = nil,
                   recipient = nil)
      @currency = currency
      @available_amount = available_amount
      @recipient = recipient
      @waiting_funds_amount = waiting_funds_amount
      @transferred_amount = transferred_amount
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      currency = hash['currency']
      available_amount = hash['available_amount']
      waiting_funds_amount = hash['waiting_funds_amount']
      transferred_amount = hash['transferred_amount']
      recipient = Recipient.from_hash(hash['recipient']) if hash['recipient']

      # Create object from extracted values.
      RecipientsBalanceResponse.new(currency,
                                    available_amount,
                                    waiting_funds_amount,
                                    transferred_amount,
                                    recipient)
    end
  end
end
