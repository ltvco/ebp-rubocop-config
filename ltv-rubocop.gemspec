# frozen_string_literal: true

require_relative 'lib/ltv/rubocop/version'

Gem::Specification.new do |spec|
  spec.name          = 'ltv-rubocop'
  spec.version       = Ltv::Rubocop::VERSION
  spec.authors       = ['LTV']

  spec.summary       = 'Shared LTV configuration for Rubocop'
  spec.homepage      = 'https://github.com/ltvco/ebp-rubocop-config'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.5.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
end
