# mundi_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

require 'date'
require_relative 'get_transaction_response'

module MundiApi
  # Response object for getting a bank transfer transaction
  class GetBankTransferTransactionResponse < GetTransactionResponse
    # Payment url
    # @return [String]
    attr_accessor :url

    # Transaction identifier for the bank
    # @return [String]
    attr_accessor :bank_tid

    # Bank
    # @return [String]
    attr_accessor :bank

    # Payment date
    # @return [DateTime]
    attr_accessor :paid_at

    # Paid amount
    # @return [Integer]
    attr_accessor :paid_amount

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['url'] = 'url'
      @_hash['bank_tid'] = 'bank_tid'
      @_hash['bank'] = 'bank'
      @_hash['paid_at'] = 'paid_at'
      @_hash['paid_amount'] = 'paid_amount'
      @_hash = super().merge(@_hash)
      @_hash
    end

    def initialize(url = nil,
                   bank_tid = nil,
                   bank = nil,
                   gateway_id = nil,
                   amount = nil,
                   status = nil,
                   success = nil,
                   created_at = nil,
                   updated_at = nil,
                   attempt_count = nil,
                   max_attempts = nil,
                   splits = nil,
                   id = nil,
                   gateway_response = nil,
                   antifraud_response = nil,
                   paid_at = nil,
                   paid_amount = nil,
                   next_attempt = nil,
                   transaction_type = nil)
      @url = url
      @bank_tid = bank_tid
      @bank = bank
      @paid_at = paid_at
      @paid_amount = paid_amount

      # Call the constructor of the base class
      super(gateway_id,
            amount,
            status,
            success,
            created_at,
            updated_at,
            attempt_count,
            max_attempts,
            splits,
            id,
            gateway_response,
            antifraud_response,
            next_attempt,
            transaction_type)
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      url = hash['url']
      bank_tid = hash['bank_tid']
      bank = hash['bank']
      gateway_id = hash['gateway_id']
      amount = hash['amount']
      status = hash['status']
      success = hash['success']
      created_at = APIHelper.rfc3339(hash['created_at']) if hash['created_at']
      updated_at = APIHelper.rfc3339(hash['updated_at']) if hash['updated_at']
      attempt_count = hash['attempt_count']
      max_attempts = hash['max_attempts']
      # Parameter is an array, so we need to iterate through it
      splits = nil
      unless hash['splits'].nil?
        splits = []
        hash['splits'].each do |structure|
          splits << (GetSplitResponse.from_hash(structure) if structure)
        end
      end
      id = hash['id']
      if hash['gateway_response']
        gateway_response = GetGatewayResponseResponse.from_hash(hash['gateway_response'])
      end
      if hash['antifraud_response']
        antifraud_response = GetAntifraudResponse.from_hash(hash['antifraud_response'])
      end
      paid_at = APIHelper.rfc3339(hash['paid_at']) if hash['paid_at']
      paid_amount = hash['paid_amount']
      next_attempt = APIHelper.rfc3339(hash['next_attempt']) if
        hash['next_attempt']
      transaction_type = hash['transaction_type']

      # Create object from extracted values.
      GetBankTransferTransactionResponse.new(url,
                                             bank_tid,
                                             bank,
                                             gateway_id,
                                             amount,
                                             status,
                                             success,
                                             created_at,
                                             updated_at,
                                             attempt_count,
                                             max_attempts,
                                             splits,
                                             id,
                                             gateway_response,
                                             antifraud_response,
                                             paid_at,
                                             paid_amount,
                                             next_attempt,
                                             transaction_type)
    end
  end
end
