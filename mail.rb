#!/usr/bin/env ruby

require 'twitter'
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "sn4kuMvFDaA4uX4IoaRy06r5I"
  config.consumer_secret     = "AkkgPPI0alWVqFm74iuROkSEDIkcPYIKMzgHxdZ9bbPFsLF7hv"
  config.access_token        = "885132936357576706-bXwtT0ROU5sdkgYxUVTfuOnOklptfvF"
  config.access_token_secret = "6h7Zja3HECHrfgyoz9dtEifDDDecqE5m2rxNYMto7ri6k"
end
search_options = {

  result_type: "recent",
  geocode: "48.8566140,2.35222220,10mi"
}

numRegex=/\d+/

client.search(" ",search_options).take(100).each do |tweet|
	if numRegex.match(tweet.text)
		puts tweet.text
	else
		puts"dommage"
	end

end
