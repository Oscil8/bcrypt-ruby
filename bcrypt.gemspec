Gem::Specification.new do |s|
  s.name = 'lookout-bcrypt'
  s.version = '3.2.1'

  s.summary = "OpenBSD's bcrypt() password hashing algorithm."
  s.description = <<-EOF
    bcrypt() is a sophisticated and secure hash algorithm designed by The OpenBSD project
    for hashing passwords. The bcrypt Ruby gem provides a simple wrapper for safely handling
    passwords.
  EOF

  s.files = `git ls-files`.split("\n")
  s.require_path = 'lib'

  s.add_development_dependency 'rake-compiler', '~> 0.9.2'
  s.add_development_dependency 'rspec', '>= 3'
  s.add_development_dependency 'rdoc', '~> 3.12'

  s.has_rdoc = true
  s.rdoc_options += ['--title', 'bcrypt-ruby', '--line-numbers', '--inline-source', '--main', 'README.md']
  s.extra_rdoc_files += ['README.md', 'COPYING', 'CHANGELOG', *Dir['lib/**/*.rb']]

  s.extensions = 'ext/mri/extconf.rb'

  s.authors = ["Coda Hale", "Ariel Salomon"]
  s.email = "ariel.salomon@gmail.com"
  s.homepage = "https://github.com/Oscil8/bcrypt-ruby"
  s.license = "MIT"
end
