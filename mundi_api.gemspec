Gem::Specification.new do |s|
  s.name = 'mundi_api'
  s.version = '2.4.0'
  s.summary = 'mundi_api'
  s.description = 'Mundipagg API'
  s.authors = ['APIMatic SDK Generator']
  s.email = ['support@apimatic.io']
  s.homepage = 'https://apimatic.io'
  s.licenses = ['MIT']
  s.add_dependency('apimatic_core_interfaces', '~> 0.1.0')
  s.add_dependency('apimatic_core', '~> 0.2.0')
  s.add_dependency('apimatic_faraday_client_adapter', '~> 0.1.0')
  s.required_ruby_version = ['>= 2.6']
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
