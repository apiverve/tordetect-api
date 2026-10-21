# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_tordetect"
  spec.version       = "1.2.2"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "Tor Node Detector API - Ruby Client"
  spec.description   = "Tor Node Detector is a Tor exit node checker API: send any IP address and it tells you whether that IP belongs to an active Tor exit node, so you can identify traffic originating from the anonymity network."
  spec.homepage      = "https://apiverve.com/marketplace/tordetect?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/tordetect-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/tordetect"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
