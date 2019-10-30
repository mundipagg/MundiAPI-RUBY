# mundi_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module MundiApi
  # Anticipation limits
  class GetAnticipationLimitsResponse < BaseModel
    # Max limit
    # @return [GetAnticipationLimitResponse]
    attr_accessor :max

    # Min limit
    # @return [GetAnticipationLimitResponse]
    attr_accessor :min

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['max'] = 'max'
      @_hash['min'] = 'min'
      @_hash
    end

    def initialize(max = nil,
                   min = nil)
      @max = max
      @min = min
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      max = GetAnticipationLimitResponse.from_hash(hash['max']) if hash['max']
      min = GetAnticipationLimitResponse.from_hash(hash['min']) if hash['min']

      # Create object from extracted values.
      GetAnticipationLimitsResponse.new(max,
                                        min)
    end
  end
end
