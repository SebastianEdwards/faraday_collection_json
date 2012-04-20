# Faraday Collection JSON

This Faraday middleware parses collection+json responses using the
collection-json gem.

```ruby
service = Faraday.new do |builder|
  builder.response :collection_json, :content_type => /collection\+json$/
  builder.adapter  :net_http
end

collection = service.get('http://www.service.org/').body
collection.href                       # => 'http://www.service.org/'
collection.links.first.tap do |link|
  link.rel                            # => 'feed'
  link.href                           # => 'http://www.service.org/feed.rss'
end
```
