# mundi_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module MundiApi
  # Card data
  class CreateCardRequest < BaseModel
    # Credit card number
    # @return [String]
    attr_accessor :number

    # Holder name, as written on the card
    # @return [String]
    attr_accessor :holder_name

    # The expiration month
    # @return [Integer]
    attr_accessor :exp_month

    # The expiration year, that can be informed with 2 or 4 digits
    # @return [Integer]
    attr_accessor :exp_year

    # The card's security code
    # @return [String]
    attr_accessor :cvv

    # Card's billing address
    # @return [CreateAddressRequest]
    attr_accessor :billing_address

    # Card brand
    # @return [String]
    attr_accessor :brand

    # The address id for the billing address
    # @return [String]
    attr_accessor :billing_address_id

    # Metadata
    # @return [Array<String, String>]
    attr_accessor :metadata

    # Card type
    # @return [String]
    attr_accessor :type

    # Options for creating the card
    # @return [CreateCardOptionsRequest]
    attr_accessor :options

    # Document number for the card's holder
    # @return [String]
    attr_accessor :holder_document

    # Indicates whether it is a private label card
    # @return [Boolean]
    attr_accessor :private_label

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['number'] = 'number'
      @_hash['holder_name'] = 'holder_name'
      @_hash['exp_month'] = 'exp_month'
      @_hash['exp_year'] = 'exp_year'
      @_hash['cvv'] = 'cvv'
      @_hash['billing_address'] = 'billing_address'
      @_hash['brand'] = 'brand'
      @_hash['billing_address_id'] = 'billing_address_id'
      @_hash['metadata'] = 'metadata'
      @_hash['type'] = 'type'
      @_hash['options'] = 'options'
      @_hash['holder_document'] = 'holder_document'
      @_hash['private_label'] = 'private_label'
      @_hash
    end

    def initialize(number = nil,
                   holder_name = nil,
                   exp_month = nil,
                   exp_year = nil,
                   cvv = nil,
                   billing_address = nil,
                   brand = nil,
                   billing_address_id = nil,
                   metadata = nil,
                   type = 'credit',
                   options = nil,
                   private_label = nil,
                   holder_document = nil)
      @number = number
      @holder_name = holder_name
      @exp_month = exp_month
      @exp_year = exp_year
      @cvv = cvv
      @billing_address = billing_address
      @brand = brand
      @billing_address_id = billing_address_id
      @metadata = metadata
      @type = type
      @options = options
      @holder_document = holder_document
      @private_label = private_label
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      number = hash['number']
      holder_name = hash['holder_name']
      exp_month = hash['exp_month']
      exp_year = hash['exp_year']
      cvv = hash['cvv']
      if hash['billing_address']
        billing_address = CreateAddressRequest.from_hash(hash['billing_address'])
      end
      brand = hash['brand']
      billing_address_id = hash['billing_address_id']
      metadata = hash['metadata']
      type = hash['type'] ||= 'credit'
      options = CreateCardOptionsRequest.from_hash(hash['options']) if
        hash['options']
      private_label = hash['private_label']
      holder_document = hash['holder_document']

      # Create object from extracted values.
      CreateCardRequest.new(number,
                            holder_name,
                            exp_month,
                            exp_year,
                            cvv,
                            billing_address,
                            brand,
                            billing_address_id,
                            metadata,
                            type,
                            options,
                            private_label,
                            holder_document)
    end
  end
end
