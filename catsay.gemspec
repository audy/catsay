Gem::Specification.new do |s|
  s.name        = 'catsay'
  s.version     = '0.0.1'
  s.licenses    = ['MIT']
  s.summary     = 'Cats in your terminal'
  s.description = 'Like cowsay but with cats'
  s.authors     = ['Austin G. Davis-Richardson']
  s.email       = 'harekrishna@gmail.com'
  s.files       = ['bin/catsay',
                   'lib/cat.rb',
                   'lib/catsay.rb',
                   'lib/exceptions.rb',
                   'cats/default.erb',
                   'cats/test.erb'
                  ]
  s.homepage    = 'https://github.com/audy/catsay'
  s.executables << 'catsay'
end
