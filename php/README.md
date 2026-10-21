# Tor Node Detector API - PHP Package

Tor Node Detector is a Tor exit node checker API: send any IP address and it tells you whether that IP belongs to an active Tor exit node, so you can identify traffic originating from the anonymity network.

## Installation

Install via Composer:

```bash
composer require apiverve/tordetect
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Tordetect\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['ip' => '185.189.183.143']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Tordetect\Client;
use APIVerve\Tordetect\Exceptions\APIException;
use APIVerve\Tordetect\Exceptions\ValidationException;

try {
    $response = $client->execute(['ip' => '185.189.183.143']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/tordetect?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/tordetect?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/tordetect?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
