module MundiApi
  # All configuration including auth info and base URI for the API access
  # are configured in this class.
  class Configuration
    attr_accessor :array_serialization
    attr_accessor :base_uri
    attr_accessor :basic_auth_user_name
    attr_accessor :basic_auth_password

    def initialize(basic_auth_user_name, basic_auth_password)
      @basic_auth_user_name = basic_auth_user_name
      @basic_auth_password = basic_auth_password

      @base_uri = 'https://api.mundipagg.com/core/v1'
    end
  end
end
