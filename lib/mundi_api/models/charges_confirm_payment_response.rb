# mundi_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

require 'date'
module MundiApi
  # ChargesConfirmPaymentResponse Model.
  class ChargesConfirmPaymentResponse < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :code

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
    # @return [String]
    attr_accessor :currency

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :payment_method

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :due_at

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :created_at

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :updated_at

    # TODO: Write general description for this method
    # @return [GetTransactionResponse]
    attr_accessor :last_transaction

    # TODO: Write general description for this method
    # @return [Invoice]
    attr_accessor :invoice

    # TODO: Write general description for this method
    # @return [Order]
    attr_accessor :order

    # TODO: Write general description for this method
    # @return [Customer]
    attr_accessor :customer

    # TODO: Write general description for this method
    # @return [Array<String, String>]
    attr_accessor :metadata

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :paid_at

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :canceled_at

    # Canceled Amount
    # @return [Integer]
    attr_accessor :canceled_amount

    # Paid amount
    # @return [Integer]
    attr_accessor :paid_amount

    # Defines whether the card has been used one or more times.
    # @return [String]
    attr_accessor :recurrency_cycle

    # interest and fine paid
    # @return [Integer]
    attr_accessor :interest_and_fine_paid

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['code'] = 'code'
      @_hash['gateway_id'] = 'gateway_id'
      @_hash['amount'] = 'amount'
      @_hash['status'] = 'status'
      @_hash['currency'] = 'currency'
      @_hash['payment_method'] = 'payment_method'
      @_hash['due_at'] = 'due_at'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash['last_transaction'] = 'last_transaction'
      @_hash['invoice'] = 'invoice'
      @_hash['order'] = 'order'
      @_hash['customer'] = 'customer'
      @_hash['metadata'] = 'metadata'
      @_hash['paid_at'] = 'paid_at'
      @_hash['canceled_at'] = 'canceled_at'
      @_hash['canceled_amount'] = 'canceled_amount'
      @_hash['paid_amount'] = 'paid_amount'
      @_hash['recurrency_cycle'] = 'recurrency_cycle'
      @_hash['interest_and_fine_paid'] = 'interest_and_fine_paid'
      @_hash
    end

    def initialize(id = nil,
                   code = nil,
                   gateway_id = nil,
                   amount = nil,
                   status = nil,
                   currency = nil,
                   payment_method = nil,
                   due_at = nil,
                   created_at = nil,
                   updated_at = nil,
                   metadata = nil,
                   canceled_amount = nil,
                   paid_amount = nil,
                   last_transaction = nil,
                   invoice = nil,
                   order = nil,
                   customer = nil,
                   paid_at = nil,
                   canceled_at = nil,
                   recurrency_cycle = nil,
                   interest_and_fine_paid = nil)
      @id = id
      @code = code
      @gateway_id = gateway_id
      @amount = amount
      @status = status
      @currency = currency
      @payment_method = payment_method
      @due_at = due_at
      @created_at = created_at
      @updated_at = updated_at
      @last_transaction = last_transaction
      @invoice = invoice
      @order = order
      @customer = customer
      @metadata = metadata
      @paid_at = paid_at
      @canceled_at = canceled_at
      @canceled_amount = canceled_amount
      @paid_amount = paid_amount
      @recurrency_cycle = recurrency_cycle
      @interest_and_fine_paid = interest_and_fine_paid
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash['id']
      code = hash['code']
      gateway_id = hash['gateway_id']
      amount = hash['amount']
      status = hash['status']
      currency = hash['currency']
      payment_method = hash['payment_method']
      due_at = APIHelper.rfc3339(hash['due_at']) if hash['due_at']
      created_at = APIHelper.rfc3339(hash['created_at']) if hash['created_at']
      updated_at = APIHelper.rfc3339(hash['updated_at']) if hash['updated_at']
      metadata = hash['metadata']
      canceled_amount = hash['canceled_amount']
      paid_amount = hash['paid_amount']
      if hash['last_transaction']
        last_transaction = GetTransactionResponse.from_hash(hash['last_transaction'])
      end
      invoice = Invoice.from_hash(hash['invoice']) if hash['invoice']
      order = Order.from_hash(hash['order']) if hash['order']
      customer = Customer.from_hash(hash['customer']) if hash['customer']
      paid_at = APIHelper.rfc3339(hash['paid_at']) if hash['paid_at']
      canceled_at = APIHelper.rfc3339(hash['canceled_at']) if
        hash['canceled_at']
      recurrency_cycle = hash['recurrency_cycle']
      interest_and_fine_paid = hash['interest_and_fine_paid']

      # Create object from extracted values.
      ChargesConfirmPaymentResponse.new(id,
                                        code,
                                        gateway_id,
                                        amount,
                                        status,
                                        currency,
                                        payment_method,
                                        due_at,
                                        created_at,
                                        updated_at,
                                        metadata,
                                        canceled_amount,
                                        paid_amount,
                                        last_transaction,
                                        invoice,
                                        order,
                                        customer,
                                        paid_at,
                                        canceled_at,
                                        recurrency_cycle,
                                        interest_and_fine_paid)
    end
  end
end
