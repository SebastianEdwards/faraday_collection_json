require 'faraday_middleware/response_middleware'

module FaradayCollectionJSON
  class ParseCollectionJSON < FaradayMiddleware::ResponseMiddleware
    dependency 'collection-json'

    define_parser { |body|
      ::CollectionJSON.parse(body)
    }
  end
end
