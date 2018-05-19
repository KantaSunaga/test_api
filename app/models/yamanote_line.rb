class YamanoteLine < ApplicationRecord

  require 'net/http'
  require 'uri'
  require 'json'
  require 'logger'

  def self.gete_way_wether(city_code)
    logger = Logger.new('./webapi.log')
    gateWayUrl = URI.parse("http://weather.livedoor.com/forecast/webservice/json/v1?city=#{city_code}")
    begin
      res = Net::HTTP.start(gateWayUrl.host, gateWayUrl.port) {|http|
        http.get(gateWayUrl.request_uri)
      }
      
      print JSON.parse(res.body)

      rescue IOError => e
        logger.error(e.message)
      rescue TimeoutError => e
        logger.error(e.message)
      rescue JSON::ParserError => e
        logger.error(e.message)
      rescue => e
        logger.error(e.message)
      end
    end

end
