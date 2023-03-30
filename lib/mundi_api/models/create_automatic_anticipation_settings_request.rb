# mundi_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MundiApi
  # CreateAutomaticAnticipationSettingsRequest Model.
  class CreateAutomaticAnticipationSettingsRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [TrueClass|FalseClass]
    attr_accessor :enabled

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :type

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :volume_percentage

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :delay

    # TODO: Write general description for this method
    # @return [List of Integer]
    attr_accessor :days

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['enabled'] = 'enabled'
      @_hash['type'] = 'type'
      @_hash['volume_percentage'] = 'volume_percentage'
      @_hash['delay'] = 'delay'
      @_hash['days'] = 'days'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(enabled = nil,
                   type = nil,
                   volume_percentage = nil,
                   delay = nil,
                   days = nil)
      @enabled = enabled
      @type = type
      @volume_percentage = volume_percentage
      @delay = delay
      @days = days
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      enabled = hash.key?('enabled') ? hash['enabled'] : nil
      type = hash.key?('type') ? hash['type'] : nil
      volume_percentage =
        hash.key?('volume_percentage') ? hash['volume_percentage'] : nil
      delay = hash.key?('delay') ? hash['delay'] : nil
      days = hash.key?('days') ? hash['days'] : nil

      # Create object from extracted values.
      CreateAutomaticAnticipationSettingsRequest.new(enabled,
                                                     type,
                                                     volume_percentage,
                                                     delay,
                                                     days)
    end
  end
end
