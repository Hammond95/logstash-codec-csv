Gem::Specification.new do |s|

  s.name            = 'logstash-codec-csv'
  s.version         = '1.1.1'
  s.licenses        = ['Apache License (2.0)']
  s.summary         = "The csv codec take CSV data, parses it and passes it away"
  s.description     = "This gem is a Logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/logstash-plugin install gemname. This gem is not a stand-alone program"
  s.authors         = ["Elasticsearch"]
  s.email           = 'info@elasticsearch.com'
  s.homepage        = "http://www.elasticsearch.org/guide/en/logstash/current/index.html"
  s.require_paths = ["lib"]

  # Files
  s.files = Dir["lib/**/*","spec/**/*","*.gemspec","*.md","CONTRIBUTORS","Gemfile","LICENSE","NOTICE.TXT", "vendor/jar-dependencies/**/*.jar", "vendor/jar-dependencies/**/*.rb", "VERSION", "docs/**/*"]

  # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "codec" }

  # Gem dependencies
  s.add_runtime_dependency "logstash-core-plugin-api", ">= 1.60", "<= 2.99"
  s.add_runtime_dependency 'logstash-mixin-ecs_compatibility_support', '~> 1.3'
  s.add_runtime_dependency 'logstash-mixin-event_support', '~> 1.0'
  s.add_runtime_dependency 'logstash-mixin-validator_support', '~> 1.0'

  s.add_development_dependency 'logstash-devutils'
end

