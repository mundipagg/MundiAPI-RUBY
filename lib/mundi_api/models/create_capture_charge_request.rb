# mundi_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MundiApi
  # Request for capturing a charge
  class CreateCaptureChargeRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Code for the charge. Sending this field will update the code send on the
    # charge and order creation.
    # @return [String]
    attr_accessor :code

    # The amount that will be captured
    # @return [Integer]
    attr_accessor :amount

    # Splits
    # @return [List of CreateSplitRequest]
    attr_accessor :split

    # Splits
    # @return [String]
    attr_accessor :operation_reference

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['code'] = 'code'
      @_hash['amount'] = 'amount'
      @_hash['split'] = 'split'
      @_hash['operation_reference'] = 'operation_reference'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        amount
        split
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(code = nil,
                   operation_reference = nil,
                   amount = SKIP,
                   split = SKIP)
      @code = code
      @amount = amount unless amount == SKIP
      @split = split unless split == SKIP
      @operation_reference = operation_reference
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      code = hash.key?('code') ? hash['code'] : nil
      operation_reference =
        hash.key?('operation_reference') ? hash['operation_reference'] : nil
      amount = hash.key?('amount') ? hash['amount'] : SKIP
      # Parameter is an array, so we need to iterate through it
      split = nil
      unless hash['split'].nil?
        split = []
        hash['split'].each do |structure|
          split << (CreateSplitRequest.from_hash(structure) if structure)
        end
      end

      split = SKIP unless hash.key?('split')

      # Create object from extracted values.
      CreateCaptureChargeRequest.new(code,
                                     operation_reference,
                                     amount,
                                     split)
    end
  end
end
