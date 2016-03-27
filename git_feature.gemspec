require File.expand_path('../lib/git_feature/version', __FILE__)

Gem::Specification.new do |s|
  s.name          = 'git_feature'
  s.version       = GitFeature::VERSION
  s.platform      = Gem::Platform::RUBY
  s.date          = '2016-03-10'
  s.summary       = "Returns a git branch name from an issue's URL"
  s.description   = "Given a GitHub issue URL, you can pipe the output to `git checkout -b` to create a new feature branch with teh issue's name and number"
  s.authors       = ['Cezar Halmagean']
  s.email         = 'cezar@halmagean.ro'
  s.files         = Dir["{lib}/**/*.rb", "bin/*", "LICENSE", "*.md"]
  s.executables   = ['git_feature']
  s.require_path  = 'lib'
  s.homepage      = 'http://rubygems.org/gems/git_feature'
  s.license       = 'MIT'

  s.add_runtime_dependency 'github_api', '~> 0.13'

  s.add_development_dependency 'vcr', '~> 3.0'
end
