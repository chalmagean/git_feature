Gem::Specification.new do |s|
  s.name        = 'git_feature'
  s.version     = '0.0.0'
  s.date        = '2016-03-10'
  s.summary     = 'Create a new branch from a ticket'
  s.description = "Given a GitHub URL, create a named feature branch using the ticket's name and number"
  s.authors     = ['Cezar Halmagean']
  s.email       = 'cezar@halmagean.ro'
  s.files       = ['lib/git_feature.rb']
  s.executables << 'git_feature'
  s.homepage    = 'http://rubygems.org/gems/git_feature'
  s.license     = 'MIT'
end