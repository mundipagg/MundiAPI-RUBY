# mundi_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

require 'date'
module MundiApi
  # GetTransfer Model.
  class GetTransfer < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :gateway_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :amount

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :status

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :created_at

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :updated_at

    # TODO: Write general description for this method
    # @return [Array<String, String>]
    attr_accessor :metadata

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :fee

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :funding_date

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :funding_estimated_date

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :type

    # TODO: Write general description for this method
    # @return [GetWithdrawSourceResponse]
    attr_accessor :source

    # TODO: Write general description for this method
    # @return [GetWithdrawTargetResponse]
    attr_accessor :target

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['gateway_id'] = 'gateway_id'
      @_hash['amount'] = 'amount'
      @_hash['status'] = 'status'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash['metadata'] = 'metadata'
      @_hash['fee'] = 'fee'
      @_hash['funding_date'] = 'funding_date'
      @_hash['funding_estimated_date'] = 'funding_estimated_date'
      @_hash['type'] = 'type'
      @_hash['source'] = 'source'
      @_hash['target'] = 'target'
      @_hash
    end

    def initialize(id = nil,
                   gateway_id = nil,
                   amount = nil,
                   status = nil,
                   created_at = nil,
                   updated_at = nil,
                   type = nil,
                   source = nil,
                   target = nil,
                   metadata = nil,
                   fee = nil,
                   funding_date = nil,
                   funding_estimated_date = nil)
      @id = id
      @gateway_id = gateway_id
      @amount = amount
      @status = status
      @created_at = created_at
      @updated_at = updated_at
      @metadata = metadata
      @fee = fee
      @funding_date = funding_date
      @funding_estimated_date = funding_estimated_date
      @type = type
      @source = source
      @target = target
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash['id']
      gateway_id = hash['gateway_id']
      amount = hash['amount']
      status = hash['status']
      created_at = APIHelper.rfc3339(hash['created_at']) if hash['created_at']
      updated_at = APIHelper.rfc3339(hash['updated_at']) if hash['updated_at']
      type = hash['type']
      source = GetWithdrawSourceResponse.from_hash(hash['source']) if
        hash['source']
      target = GetWithdrawTargetResponse.from_hash(hash['target']) if
        hash['target']
      metadata = hash['metadata']
      fee = hash['fee']
      funding_date = APIHelper.rfc3339(hash['funding_date']) if
        hash['funding_date']
      funding_estimated_date = APIHelper.rfc3339(hash['funding_estimated_date']) if
        hash['funding_estimated_date']

      # Create object from extracted values.
      GetTransfer.new(id,
                      gateway_id,
                      amount,
                      status,
                      created_at,
                      updated_at,
                      type,
                      source,
                      target,
                      metadata,
                      fee,
                      funding_date,
                      funding_estimated_date)
    end
  end
end
