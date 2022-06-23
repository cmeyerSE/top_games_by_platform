# frozen_string_literal: true

require_relative "lib/top_games_by_platform/version"

Gem::Specification.new do |spec|
  spec.name = "top_games_by_platform"
  spec.version = TopGamesByPlatform::VERSION
  spec.authors = ["Cory"]
  spec.email = ["cameyer182@gmail.com"]

  spec.summary = "Helps find the top games for each platform"
  spec.description = "You choose your platform and then it will give a list of top games for that platform. Once you choose your game it will give a brief description of the game"
  spec.homepage = "https://github.com/cmeyerSE/top_games_by_platform.git"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "http://www.bob.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/cmeyerSE/top_games_by_platform.git"
  spec.metadata["changelog_uri"] = "http://www.bob.com"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
