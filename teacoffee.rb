#!/usr/bin/env ruby

require 'twitter'
client = Twitter::Streaming::Client.new do |config|
  config.consumer_key        = "sn4kuMvFDaA4uX4IoaRy06r5I"
  config.consumer_secret     = "AkkgPPI0alWVqFm74iuROkSEDIkcPYIKMzgHxdZ9bbPFsLF7hv"
  config.access_token        = "885132936357576706-bXwtT0ROU5sdkgYxUVTfuOnOklptfvF"
  config.access_token_secret = "6h7Zja3HECHrfgyoz9dtEifDDDecqE5m2rxNYMto7ri6k"
end

topics = ["lucas", "antoine"]
client.filter(:track => topics.join(",")) do |object|
  puts object.text if object.is_a?(Twitter::Tweet)

end


