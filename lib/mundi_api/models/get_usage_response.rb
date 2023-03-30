# mundi_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module MundiApi
  # Response object for getting a usage
  class GetUsageResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Id
    # @return [String]
    attr_accessor :id

    # Quantity
    # @return [Integer]
    attr_accessor :quantity

    # Description
    # @return [String]
    attr_accessor :description

    # Used at
    # @return [DateTime]
    attr_accessor :used_at

    # Creation date
    # @return [DateTime]
    attr_accessor :created_at

    # Status
    # @return [String]
    attr_accessor :status

    # Status
    # @return [DateTime]
    attr_accessor :deleted_at

    # Subscription item
    # @return [GetSubscriptionItemResponse]
    attr_accessor :subscription_item

    # Identification code in the client system
    # @return [String]
    attr_accessor :code

    # Identification group in the client system
    # @return [String]
    attr_accessor :group

    # Field used in item scheme type 'Percent'
    # @return [Integer]
    attr_accessor :amount

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['quantity'] = 'quantity'
      @_hash['description'] = 'description'
      @_hash['used_at'] = 'used_at'
      @_hash['created_at'] = 'created_at'
      @_hash['status'] = 'status'
      @_hash['deleted_at'] = 'deleted_at'
      @_hash['subscription_item'] = 'subscription_item'
      @_hash['code'] = 'code'
      @_hash['group'] = 'group'
      @_hash['amount'] = 'amount'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        deleted_at
        code
        group
        amount
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id = nil,
                   quantity = nil,
                   description = nil,
                   used_at = nil,
                   created_at = nil,
                   status = nil,
                   subscription_item = nil,
                   deleted_at = SKIP,
                   code = SKIP,
                   group = SKIP,
                   amount = SKIP)
      @id = id
      @quantity = quantity
      @description = description
      @used_at = used_at
      @created_at = created_at
      @status = status
      @deleted_at = deleted_at unless deleted_at == SKIP
      @subscription_item = subscription_item
      @code = code unless code == SKIP
      @group = group unless group == SKIP
      @amount = amount unless amount == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : nil
      quantity = hash.key?('quantity') ? hash['quantity'] : nil
      description = hash.key?('description') ? hash['description'] : nil
      used_at = if hash.key?('used_at')
                  (DateTimeHelper.from_rfc3339(hash['used_at']) if hash['used_at'])
                end
      created_at = if hash.key?('created_at')
                     (DateTimeHelper.from_rfc3339(hash['created_at']) if hash['created_at'])
                   end
      status = hash.key?('status') ? hash['status'] : nil
      subscription_item = GetSubscriptionItemResponse.from_hash(hash['subscription_item']) if
        hash['subscription_item']
      deleted_at = if hash.key?('deleted_at')
                     (DateTimeHelper.from_rfc3339(hash['deleted_at']) if hash['deleted_at'])
                   else
                     SKIP
                   end
      code = hash.key?('code') ? hash['code'] : SKIP
      group = hash.key?('group') ? hash['group'] : SKIP
      amount = hash.key?('amount') ? hash['amount'] : SKIP

      # Create object from extracted values.
      GetUsageResponse.new(id,
                           quantity,
                           description,
                           used_at,
                           created_at,
                           status,
                           subscription_item,
                           deleted_at,
                           code,
                           group,
                           amount)
    end

    def to_used_at
      DateTimeHelper.to_rfc3339(used_at)
    end

    def to_created_at
      DateTimeHelper.to_rfc3339(created_at)
    end

    def to_deleted_at
      DateTimeHelper.to_rfc3339(deleted_at)
    end
  end
end
