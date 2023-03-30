# mundi_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module MundiApi
  # CreateTransactionReportFileRequest Model.
  class CreateTransactionReportFileRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :start_at

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :end_at

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['start_at'] = 'start_at'
      @_hash['end_at'] = 'end_at'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        start_at
        end_at
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(name = nil,
                   start_at = SKIP,
                   end_at = SKIP)
      @name = name
      @start_at = start_at unless start_at == SKIP
      @end_at = end_at unless end_at == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : nil
      start_at = if hash.key?('start_at')
                   (DateTimeHelper.from_rfc3339(hash['start_at']) if hash['start_at'])
                 else
                   SKIP
                 end
      end_at = hash.key?('end_at') ? hash['end_at'] : SKIP

      # Create object from extracted values.
      CreateTransactionReportFileRequest.new(name,
                                             start_at,
                                             end_at)
    end

    def to_start_at
      DateTimeHelper.to_rfc3339(start_at)
    end
  end
end
