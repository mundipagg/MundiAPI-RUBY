# mundi_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module MundiApi
  # ThreedSecure Model.
  class ThreedSecure < BaseModel
    # MPI Vendor
    # @return [String]
    attr_accessor :mpi

    # Electronic Commerce Indicator (ECI) (Opcional)
    # @return [String]
    attr_accessor :eci

    # Online payment cryptogram, definido pelo 3-D Secure.
    # @return [String]
    attr_accessor :cavv

    # Identificador da transação (XID)
    # @return [String]
    attr_accessor :transaction_id

    # Url de redirecionamento de sucessso
    # @return [String]
    attr_accessor :success_url

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['mpi'] = 'mpi'
      @_hash['eci'] = 'eci'
      @_hash['cavv'] = 'cavv'
      @_hash['transaction_id'] = 'transaction_Id'
      @_hash['success_url'] = 'success_url'
      @_hash
    end

    def initialize(mpi = nil,
                   eci = nil,
                   cavv = nil,
                   transaction_id = nil,
                   success_url = nil)
      @mpi = mpi
      @eci = eci
      @cavv = cavv
      @transaction_id = transaction_id
      @success_url = success_url
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      mpi = hash['mpi']
      eci = hash['eci']
      cavv = hash['cavv']
      transaction_id = hash['transaction_Id']
      success_url = hash['success_url']

      # Create object from extracted values.
      ThreedSecure.new(mpi,
                       eci,
                       cavv,
                       transaction_id,
                       success_url)
    end
  end
end
