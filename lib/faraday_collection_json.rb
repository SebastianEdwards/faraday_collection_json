require "faraday_collection_json/version"
require "faraday_collection_json/parse_collection_json"

module FaradayCollectionJSON
  if Faraday.respond_to? :register_middleware
    Faraday.register_middleware :response,
      :collection_json  => lambda { ParseCollectionJSON }
  end
end
