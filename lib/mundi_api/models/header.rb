# mundi_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module MundiApi
  # Header Model.
  class Header < BaseModel
    # SHA–256 hash, Base64 string codified
    # @return [String]
    attr_accessor :public_key_hash

    # X.509 encoded key bytes, Base64 encoded as a string
    # @return [String]
    attr_accessor :ephemeral_public_key

    # Transaction identifier, generated on Device
    # @return [String]
    attr_accessor :transaction_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['public_key_hash'] = 'public_key_hash'
      @_hash['ephemeral_public_key'] = 'ephemeral_public_key'
      @_hash['transaction_id'] = 'transaction_id'
      @_hash
    end

    def initialize(ephemeral_public_key = nil,
                   public_key_hash = nil,
                   transaction_id = nil)
      @public_key_hash = public_key_hash
      @ephemeral_public_key = ephemeral_public_key
      @transaction_id = transaction_id
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      ephemeral_public_key = hash['ephemeral_public_key']
      public_key_hash = hash['public_key_hash']
      transaction_id = hash['transaction_id']

      # Create object from extracted values.
      Header.new(ephemeral_public_key,
                 public_key_hash,
                 transaction_id)
    end
  end
end
