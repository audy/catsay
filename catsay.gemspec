Gem::Specification.new do |s|
  s.name        = 'catsay'
  s.version     = '0.3.2'
  s.licenses    = ['MIT']
  s.summary     = 'Cats in your terminal'
  s.description = 'Like cowsay but with cats'
  s.authors     = ['Austin G. Davis-Richardson']
  s.email       = 'harekrishna@gmail.com'

  s.files       = ['bin/catsay',
                   'lib/cat.rb',
                   'lib/catsay.rb',
                   'lib/exceptions.rb'
                  ]

  s.files.concat `git ls-files cats/*.erb`.split("\n")

  s.homepage    = 'https://github.com/audy/catsay'
  s.executables << 'catsay'
  s.cert_chain  = ['certs/audy.pem']
end
