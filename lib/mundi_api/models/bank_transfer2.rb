# mundi_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module MundiApi
  # BankTransfer2 Model.
  class BankTransfer2 < BaseModel
    # Bank
    # @return [List of String]
    attr_accessor :bank

    # Number of retries for processing
    # @return [Integer]
    attr_accessor :retries

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['bank'] = 'bank'
      @_hash['retries'] = 'retries'
      @_hash
    end

    def initialize(bank = nil,
                   retries = nil)
      @bank = bank
      @retries = retries
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      bank = hash['bank']
      retries = hash['retries']

      # Create object from extracted values.
      BankTransfer2.new(bank,
                        retries)
    end
  end
end
