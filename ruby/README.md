# Tor Node Detector API - Ruby Gem

Tor Node Detector is a Tor exit node checker API: send any IP address and it tells you whether that IP belongs to an active Tor exit node, so you can identify traffic originating from the anonymity network.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_tordetect'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_tordetect
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_tordetect'

# Initialize the client
client = APIVerve::Tordetect::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ ip: "185.189.183.143" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ ip: "185.189.183.143" })
  puts response["data"]
rescue APIVerve::Tordetect::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Tordetect::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Tordetect::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "ipAddress": "185.189.183.143",
    "isTor": true,
    "ipDetails": {
      "country": "NL",
      "region": "ZH",
      "timezone": "Europe/Amsterdam"
    },
    "parsed": true,
    "asn": "AS215747",
    "asnName": "NUBACLOUD"
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/tordetect?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/tordetect?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/tordetect?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
