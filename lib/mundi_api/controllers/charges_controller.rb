# mundi_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module MundiApi
  # ChargesController
  class ChargesController < BaseController
    @instance = ChargesController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Get a charge from its id
    # @param [String] charge_id Required parameter: Charge id
    # @return ChargesResponse response from the API call
    def get_charge(charge_id)
      # Prepare query url.
      _path_url = '/charges/{charge_id}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'charge_id' => charge_id
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'ServiceRefererName' => Configuration.service_referer_name
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      # Validate response against endpoint and global error codes.
      if _context.response.status_code == 400
        raise ErrorException.new(
          'Invalid request',
          _context
        )
      elsif _context.response.status_code == 401
        raise ErrorException.new(
          'Invalid API key',
          _context
        )
      elsif _context.response.status_code == 404
        raise ErrorException.new(
          'An informed resource was not found',
          _context
        )
      elsif _context.response.status_code == 412
        raise ErrorException.new(
          'Business validation error',
          _context
        )
      elsif _context.response.status_code == 422
        raise ErrorException.new(
          'Contract validation error',
          _context
        )
      elsif _context.response.status_code == 500
        raise ErrorException.new(
          'Internal server error',
          _context
        )
      end
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ChargesResponse.from_hash(decoded)
    end

    # Cancel a charge
    # @param [String] charge_id Required parameter: Charge id
    # @param [String] idempotency_key Optional parameter: Example:
    # @param [ChargesRequest] body Optional parameter: Request for cancelling a
    # charge
    # @return ChargesResponse response from the API call
    def cancel_charge(charge_id,
                      idempotency_key = nil,
                      body = nil)
      # Prepare query url.
      _path_url = '/charges/{charge_id}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'charge_id' => charge_id
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'ServiceRefererName' => Configuration.service_referer_name,
        'Content-Type' => 'application/json',
        'idempotency-key' => idempotency_key
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.delete(
        _query_url,
        headers: _headers,
        parameters: body.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      # Validate response against endpoint and global error codes.
      if _context.response.status_code == 400
        raise ErrorException.new(
          'Invalid request',
          _context
        )
      elsif _context.response.status_code == 401
        raise ErrorException.new(
          'Invalid API key',
          _context
        )
      elsif _context.response.status_code == 404
        raise ErrorException.new(
          'An informed resource was not found',
          _context
        )
      elsif _context.response.status_code == 412
        raise ErrorException.new(
          'Business validation error',
          _context
        )
      elsif _context.response.status_code == 422
        raise ErrorException.new(
          'Contract validation error',
          _context
        )
      elsif _context.response.status_code == 500
        raise ErrorException.new(
          'Internal server error',
          _context
        )
      end
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ChargesResponse.from_hash(decoded)
    end

    # ConfirmPayment
    # @param [String] charge_id Required parameter: Example:
    # @param [String] idempotency_key Optional parameter: Example:
    # @param [CreateConfirmPaymentRequest] body Optional parameter: Request for
    # confirm payment
    # @return ChargesConfirmPaymentResponse response from the API call
    def confirm_payment(charge_id,
                        idempotency_key = nil,
                        body = nil)
      # Prepare query url.
      _path_url = '/charges/{charge_id}/confirm-payment'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'charge_id' => charge_id
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'ServiceRefererName' => Configuration.service_referer_name,
        'Content-Type' => 'application/json',
        'idempotency-key' => idempotency_key
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: body.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      # Validate response against endpoint and global error codes.
      if _context.response.status_code == 400
        raise ErrorException.new(
          'Invalid request',
          _context
        )
      elsif _context.response.status_code == 401
        raise ErrorException.new(
          'Invalid API key',
          _context
        )
      elsif _context.response.status_code == 404
        raise ErrorException.new(
          'An informed resource was not found',
          _context
        )
      elsif _context.response.status_code == 412
        raise ErrorException.new(
          'Business validation error',
          _context
        )
      elsif _context.response.status_code == 422
        raise ErrorException.new(
          'Contract validation error',
          _context
        )
      elsif _context.response.status_code == 500
        raise ErrorException.new(
          'Internal server error',
          _context
        )
      end
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ChargesConfirmPaymentResponse.from_hash(decoded)
    end

    # Updates the card from a charge
    # @param [String] charge_id Required parameter: Charge id
    # @param [ChargesCardRequest] body Required parameter: Request for updating
    # a charge's card
    # @param [String] idempotency_key Optional parameter: Example:
    # @return ChargesCardResponse response from the API call
    def update_charge_card(charge_id,
                           body,
                           idempotency_key = nil)
      # Prepare query url.
      _path_url = '/charges/{charge_id}/card'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'charge_id' => charge_id
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'ServiceRefererName' => Configuration.service_referer_name,
        'Content-Type' => 'application/json',
        'idempotency-key' => idempotency_key
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.patch(
        _query_url,
        headers: _headers,
        parameters: body.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      # Validate response against endpoint and global error codes.
      if _context.response.status_code == 400
        raise ErrorException.new(
          'Invalid request',
          _context
        )
      elsif _context.response.status_code == 401
        raise ErrorException.new(
          'Invalid API key',
          _context
        )
      elsif _context.response.status_code == 404
        raise ErrorException.new(
          'An informed resource was not found',
          _context
        )
      elsif _context.response.status_code == 412
        raise ErrorException.new(
          'Business validation error',
          _context
        )
      elsif _context.response.status_code == 422
        raise ErrorException.new(
          'Contract validation error',
          _context
        )
      elsif _context.response.status_code == 500
        raise ErrorException.new(
          'Internal server error',
          _context
        )
      end
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ChargesCardResponse.from_hash(decoded)
    end

    # Lists all charges
    # @param [Integer] page Optional parameter: Page number
    # @param [Integer] size Optional parameter: Page size
    # @param [String] code Optional parameter: Filter for charge's code
    # @param [String] status Optional parameter: Filter for charge's status
    # @param [String] payment_method Optional parameter: Filter for charge's
    # payment method
    # @param [String] customer_id Optional parameter: Filter for charge's
    # customer id
    # @param [String] order_id Optional parameter: Filter for charge's order
    # id
    # @param [DateTime] created_since Optional parameter: Filter for the
    # beginning of the range for charge's creation
    # @param [DateTime] created_until Optional parameter: Filter for the end of
    # the range for charge's creation
    # @return ChargesResponse2 response from the API call
    def get_charges(page = nil,
                    size = nil,
                    code = nil,
                    status = nil,
                    payment_method = nil,
                    customer_id = nil,
                    order_id = nil,
                    created_since = nil,
                    created_until = nil)
      # Prepare query url.
      _path_url = '/charges'
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'page' => page,
          'size' => size,
          'code' => code,
          'status' => status,
          'payment_method' => payment_method,
          'customer_id' => customer_id,
          'order_id' => order_id,
          'created_since' => created_since,
          'created_until' => created_until
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'ServiceRefererName' => Configuration.service_referer_name
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      # Validate response against endpoint and global error codes.
      if _context.response.status_code == 400
        raise ErrorException.new(
          'Invalid request',
          _context
        )
      elsif _context.response.status_code == 401
        raise ErrorException.new(
          'Invalid API key',
          _context
        )
      elsif _context.response.status_code == 404
        raise ErrorException.new(
          'An informed resource was not found',
          _context
        )
      elsif _context.response.status_code == 412
        raise ErrorException.new(
          'Business validation error',
          _context
        )
      elsif _context.response.status_code == 422
        raise ErrorException.new(
          'Contract validation error',
          _context
        )
      elsif _context.response.status_code == 500
        raise ErrorException.new(
          'Internal server error',
          _context
        )
      end
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ChargesResponse2.from_hash(decoded)
    end

    # Retries a charge
    # @param [String] charge_id Required parameter: Charge id
    # @param [String] idempotency_key Optional parameter: Example:
    # @return ChargesRetryResponse response from the API call
    def retry_charge(charge_id,
                     idempotency_key = nil)
      # Prepare query url.
      _path_url = '/charges/{charge_id}/retry'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'charge_id' => charge_id
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'ServiceRefererName' => Configuration.service_referer_name,
        'idempotency-key' => idempotency_key
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      # Validate response against endpoint and global error codes.
      if _context.response.status_code == 400
        raise ErrorException.new(
          'Invalid request',
          _context
        )
      elsif _context.response.status_code == 401
        raise ErrorException.new(
          'Invalid API key',
          _context
        )
      elsif _context.response.status_code == 404
        raise ErrorException.new(
          'An informed resource was not found',
          _context
        )
      elsif _context.response.status_code == 412
        raise ErrorException.new(
          'Business validation error',
          _context
        )
      elsif _context.response.status_code == 422
        raise ErrorException.new(
          'Contract validation error',
          _context
        )
      elsif _context.response.status_code == 500
        raise ErrorException.new(
          'Internal server error',
          _context
        )
      end
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ChargesRetryResponse.from_hash(decoded)
    end

    # Updates a charge's payment method
    # @param [String] charge_id Required parameter: Charge id
    # @param [ChargesPaymentMethodRequest] body Required parameter: Request for
    # updating the payment method from a charge
    # @param [String] idempotency_key Optional parameter: Example:
    # @return ChargesPaymentMethodResponse response from the API call
    def update_charge_payment_method(charge_id,
                                     body,
                                     idempotency_key = nil)
      # Prepare query url.
      _path_url = '/charges/{charge_id}/payment-method'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'charge_id' => charge_id
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'ServiceRefererName' => Configuration.service_referer_name,
        'Content-Type' => 'application/json',
        'idempotency-key' => idempotency_key
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.patch(
        _query_url,
        headers: _headers,
        parameters: body.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      # Validate response against endpoint and global error codes.
      if _context.response.status_code == 400
        raise ErrorException.new(
          'Invalid request',
          _context
        )
      elsif _context.response.status_code == 401
        raise ErrorException.new(
          'Invalid API key',
          _context
        )
      elsif _context.response.status_code == 404
        raise ErrorException.new(
          'An informed resource was not found',
          _context
        )
      elsif _context.response.status_code == 412
        raise ErrorException.new(
          'Business validation error',
          _context
        )
      elsif _context.response.status_code == 422
        raise ErrorException.new(
          'Contract validation error',
          _context
        )
      elsif _context.response.status_code == 500
        raise ErrorException.new(
          'Internal server error',
          _context
        )
      end
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ChargesPaymentMethodResponse.from_hash(decoded)
    end

    # Updates the metadata from a charge
    # @param [String] charge_id Required parameter: The charge id
    # @param [ChargesMetadataRequest] body Required parameter: Request for
    # updating the charge metadata
    # @param [String] idempotency_key Optional parameter: Example:
    # @return ChargesMetadataResponse response from the API call
    def update_charge_metadata(charge_id,
                               body,
                               idempotency_key = nil)
      # Prepare query url.
      _path_url = '/Charges/{charge_id}/metadata'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'charge_id' => charge_id
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'ServiceRefererName' => Configuration.service_referer_name,
        'Content-Type' => 'application/json',
        'idempotency-key' => idempotency_key
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.patch(
        _query_url,
        headers: _headers,
        parameters: body.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      # Validate response against endpoint and global error codes.
      if _context.response.status_code == 400
        raise ErrorException.new(
          'Invalid request',
          _context
        )
      elsif _context.response.status_code == 401
        raise ErrorException.new(
          'Invalid API key',
          _context
        )
      elsif _context.response.status_code == 404
        raise ErrorException.new(
          'An informed resource was not found',
          _context
        )
      elsif _context.response.status_code == 412
        raise ErrorException.new(
          'Business validation error',
          _context
        )
      elsif _context.response.status_code == 422
        raise ErrorException.new(
          'Contract validation error',
          _context
        )
      elsif _context.response.status_code == 500
        raise ErrorException.new(
          'Internal server error',
          _context
        )
      end
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ChargesMetadataResponse.from_hash(decoded)
    end

    # Captures a charge
    # @param [String] charge_id Required parameter: Charge id
    # @param [String] idempotency_key Optional parameter: Example:
    # @param [ChargesCaptureRequest] body Optional parameter: Request for
    # capturing a charge
    # @return ChargesCaptureResponse response from the API call
    def capture_charge(charge_id,
                       idempotency_key = nil,
                       body = nil)
      # Prepare query url.
      _path_url = '/charges/{charge_id}/capture'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'charge_id' => charge_id
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'ServiceRefererName' => Configuration.service_referer_name,
        'Content-Type' => 'application/json',
        'idempotency-key' => idempotency_key
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: body.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      # Validate response against endpoint and global error codes.
      if _context.response.status_code == 400
        raise ErrorException.new(
          'Invalid request',
          _context
        )
      elsif _context.response.status_code == 401
        raise ErrorException.new(
          'Invalid API key',
          _context
        )
      elsif _context.response.status_code == 404
        raise ErrorException.new(
          'An informed resource was not found',
          _context
        )
      elsif _context.response.status_code == 412
        raise ErrorException.new(
          'Business validation error',
          _context
        )
      elsif _context.response.status_code == 422
        raise ErrorException.new(
          'Contract validation error',
          _context
        )
      elsif _context.response.status_code == 500
        raise ErrorException.new(
          'Internal server error',
          _context
        )
      end
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ChargesCaptureResponse.from_hash(decoded)
    end

    # Updates the due date from a charge
    # @param [String] charge_id Required parameter: Charge Id
    # @param [ChargesDueDateRequest] body Required parameter: Request for
    # updating the due date
    # @param [String] idempotency_key Optional parameter: Example:
    # @return ChargesDueDateResponse response from the API call
    def update_charge_due_date(charge_id,
                               body,
                               idempotency_key = nil)
      # Prepare query url.
      _path_url = '/Charges/{charge_id}/due-date'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'charge_id' => charge_id
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'ServiceRefererName' => Configuration.service_referer_name,
        'Content-Type' => 'application/json',
        'idempotency-key' => idempotency_key
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.patch(
        _query_url,
        headers: _headers,
        parameters: body.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      # Validate response against endpoint and global error codes.
      if _context.response.status_code == 400
        raise ErrorException.new(
          'Invalid request',
          _context
        )
      elsif _context.response.status_code == 401
        raise ErrorException.new(
          'Invalid API key',
          _context
        )
      elsif _context.response.status_code == 404
        raise ErrorException.new(
          'An informed resource was not found',
          _context
        )
      elsif _context.response.status_code == 412
        raise ErrorException.new(
          'Business validation error',
          _context
        )
      elsif _context.response.status_code == 422
        raise ErrorException.new(
          'Contract validation error',
          _context
        )
      elsif _context.response.status_code == 500
        raise ErrorException.new(
          'Internal server error',
          _context
        )
      end
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ChargesDueDateResponse.from_hash(decoded)
    end

    # Creates a new charge
    # @param [ChargesRequest1] body Required parameter: Request for creating a
    # charge
    # @param [String] idempotency_key Optional parameter: Example:
    # @return ChargesResponse response from the API call
    def create_charge(body,
                      idempotency_key = nil)
      # Prepare query url.
      _path_url = '/Charges'
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'ServiceRefererName' => Configuration.service_referer_name,
        'Content-Type' => 'application/json',
        'idempotency-key' => idempotency_key
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: body.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      # Validate response against endpoint and global error codes.
      if _context.response.status_code == 400
        raise ErrorException.new(
          'Invalid request',
          _context
        )
      elsif _context.response.status_code == 401
        raise ErrorException.new(
          'Invalid API key',
          _context
        )
      elsif _context.response.status_code == 404
        raise ErrorException.new(
          'An informed resource was not found',
          _context
        )
      elsif _context.response.status_code == 412
        raise ErrorException.new(
          'Business validation error',
          _context
        )
      elsif _context.response.status_code == 422
        raise ErrorException.new(
          'Contract validation error',
          _context
        )
      elsif _context.response.status_code == 500
        raise ErrorException.new(
          'Internal server error',
          _context
        )
      end
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ChargesResponse.from_hash(decoded)
    end

    # GetChargeTransactions
    # @param [String] charge_id Required parameter: Charge Id
    # @param [Integer] page Optional parameter: Page number
    # @param [Integer] size Optional parameter: Page size
    # @return ChargesTransactionsResponse response from the API call
    def get_charge_transactions(charge_id,
                                page = nil,
                                size = nil)
      # Prepare query url.
      _path_url = '/charges/{charge_id}/transactions'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'charge_id' => charge_id
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'page' => page,
          'size' => size
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'ServiceRefererName' => Configuration.service_referer_name
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      # Validate response against endpoint and global error codes.
      if _context.response.status_code == 400
        raise ErrorException.new(
          'Invalid request',
          _context
        )
      elsif _context.response.status_code == 401
        raise ErrorException.new(
          'Invalid API key',
          _context
        )
      elsif _context.response.status_code == 404
        raise ErrorException.new(
          'An informed resource was not found',
          _context
        )
      elsif _context.response.status_code == 412
        raise ErrorException.new(
          'Business validation error',
          _context
        )
      elsif _context.response.status_code == 422
        raise ErrorException.new(
          'Contract validation error',
          _context
        )
      elsif _context.response.status_code == 500
        raise ErrorException.new(
          'Internal server error',
          _context
        )
      end
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ChargesTransactionsResponse.from_hash(decoded)
    end

    # GetChargesSummary
    # @param [String] status Required parameter: Example:
    # @param [DateTime] created_since Optional parameter: Example:
    # @param [DateTime] created_until Optional parameter: Example:
    # @return GetChargesSummaryResponse response from the API call
    def get_charges_summary(status,
                            created_since = nil,
                            created_until = nil)
      # Prepare query url.
      _path_url = '/charges/summary'
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'status' => status,
          'created_since' => created_since,
          'created_until' => created_until
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'ServiceRefererName' => Configuration.service_referer_name
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      # Validate response against endpoint and global error codes.
      if _context.response.status_code == 400
        raise ErrorException.new(
          'Invalid request',
          _context
        )
      elsif _context.response.status_code == 401
        raise ErrorException.new(
          'Invalid API key',
          _context
        )
      elsif _context.response.status_code == 404
        raise ErrorException.new(
          'An informed resource was not found',
          _context
        )
      elsif _context.response.status_code == 412
        raise ErrorException.new(
          'Business validation error',
          _context
        )
      elsif _context.response.status_code == 422
        raise ErrorException.new(
          'Contract validation error',
          _context
        )
      elsif _context.response.status_code == 500
        raise ErrorException.new(
          'Internal server error',
          _context
        )
      end
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GetChargesSummaryResponse.from_hash(decoded)
    end
  end
end
