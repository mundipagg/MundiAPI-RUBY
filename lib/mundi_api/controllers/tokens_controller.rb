# mundi_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module MundiApi
  # TokensController
  class TokensController < BaseController
    @instance = TokensController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # CreateToken
    # @param [String] public_key Required parameter: Public key
    # @param [TokensRequest] body Required parameter: Request for creating a
    # token
    # @param [String] idempotency_key Optional parameter: Example:
    # @param [String] app_id Optional parameter: Example:
    # @return TokensResponse response from the API call
    def create_token(public_key,
                     body,
                     idempotency_key = nil,
                     app_id = nil)
      # Prepare query url.
      _path_url = '/tokens'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'public_key' => public_key
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'appId' => app_id
        },
        array_serialization: Configuration.array_serialization
      )
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
      TokensResponse.from_hash(decoded)
    end

    # Gets a token from its id
    # @param [String] id Required parameter: Token id
    # @param [String] public_key Required parameter: Public key
    # @param [String] app_id Optional parameter: Example:
    # @return TokensResponse response from the API call
    def get_token(id,
                  public_key,
                  app_id = nil)
      # Prepare query url.
      _path_url = '/tokens/{id}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'id' => id,
        'public_key' => public_key
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'appId' => app_id
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
      TokensResponse.from_hash(decoded)
    end
  end
end
