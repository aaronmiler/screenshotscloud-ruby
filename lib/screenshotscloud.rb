require 'openssl'
require 'open-uri'

class ScreenshotsCloud
  def initialize(apiKey, apiSecret)
    @apiKey = apiKey
    @apiSecret = apiSecret
  end

  def screenshot_url(options={})
    parameters = URI.encode_www_form(options)
    token = OpenSSL::HMAC.hexdigest('sha1', @apiSecret, parameters)

    "https://api.screenshots.cloud/v1/screenshot/#{@apiKey}/#{token}?#{parameters}"
  end
end
