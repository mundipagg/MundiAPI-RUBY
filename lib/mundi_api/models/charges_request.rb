# mundi_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module MundiApi
  # ChargesRequest Model.
  class ChargesRequest < BaseModel
    # The amount that will be canceled.
    # @return [Integer]
    attr_accessor :amount

    # The split rules request
    # @return [List of CreateCancelChargeSplitRulesRequest]
    attr_accessor :split_rules

    # Splits
    # @return [List of CreateSplitRequest]
    attr_accessor :split

    # Splits
    # @return [String]
    attr_accessor :operation_reference

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['amount'] = 'amount'
      @_hash['split_rules'] = 'split_rules'
      @_hash['split'] = 'split'
      @_hash['operation_reference'] = 'operation_reference'
      @_hash
    end

    def initialize(operation_reference = nil,
                   amount = nil,
                   split_rules = nil,
                   split = nil)
      @amount = amount
      @split_rules = split_rules
      @split = split
      @operation_reference = operation_reference
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      operation_reference = hash['operation_reference']
      amount = hash['amount']
      # Parameter is an array, so we need to iterate through it
      split_rules = nil
      unless hash['split_rules'].nil?
        split_rules = []
        hash['split_rules'].each do |structure|
          split_rules << (CreateCancelChargeSplitRulesRequest.from_hash(structure) if structure)
        end
      end
      # Parameter is an array, so we need to iterate through it
      split = nil
      unless hash['split'].nil?
        split = []
        hash['split'].each do |structure|
          split << (CreateSplitRequest.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      ChargesRequest.new(operation_reference,
                         amount,
                         split_rules,
                         split)
    end
  end
end