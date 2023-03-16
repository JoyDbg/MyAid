# https://stackoverflow.com/a/16983443

require 'open-uri'
require 'net/https'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE if Rails.env.development?

OpenWeather.configure do |config|
  config.api_key = ENV['OPENWEATHER_API_KEY']
  config.adapter = Faraday.default_adapter
  config.http_adapter.ssl.verify = true
end

module Net
  class HTTP
    alias_method :original_use_ssl=, :use_ssl=

    def use_ssl=(flag)
      self.ca_file = "/etc/ssl/certs/ca-certificates.crt" # Update this path to the correct location
      self.verify_mode = OpenSSL::SSL::VERIFY_PEER
      self.original_use_ssl = flag
    end
  end
end

OPENWEATHER_CLIENT = OpenWeather::Client.new(
  api_key: ENV["OPENWEATHER_API_KEY"]
)
