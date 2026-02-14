# frozen_string_literal: true

require_relative "lib/service_all_libraries/version"

Gem::Specification.new do |spec|
  spec.name = "service-all-libraries"
  spec.version = ServiceAllLibraries::VERSION
  spec.authors = ["Eric Laquer"]
  spec.email = ["LaquerEric@gmail.com"]

  spec.summary = "Meta-gem that requires all Service library gems"
  spec.description = "Convenience gem that bundles all Service library gems: " \
                     "service-3d, service-biological-it, service-exception, service-table"
  spec.homepage = "https://github.com/laquereric/service-all-libraries"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/laquereric/service-all-libraries"

  spec.files = Dir.chdir(__dir__) do
    Dir["{lib}/**/*", "README.md", "LICENSE.txt"]
  end
  spec.require_paths = ["lib"]

  spec.add_dependency "service-3d"
  spec.add_dependency "service-biological-it"
  spec.add_dependency "service-exception"
  spec.add_dependency "service-table"
end
