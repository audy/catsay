# Catsay [![Build Status](https://secure.travis-ci.org/audy/catsay.png?branch=master)](http://travis-ci.org/audy/catsay) [![Coverage Status](https://coveralls.io/repos/audy/catsay/badge.png)](https://coveralls.io/r/audy/catsay)

A clone of cowsay but for cats, in Ruby.

```
$ catsay "Hello, world!"

Hello, world!
   O
      o

      |\      _,,,---,,_
      /,`.-'`'    -.  ;-;;,_
     |,4-  ) )-,_..;\ (  `'-'
    '---''(_/--'  `-'\_)
```

## Installation

Test using Ruby 1.8.7 or 1.9.3:

`(sudo) gem install catsay`

## Contributing

I need cats.

1. Create a new erb file in `cats/`

For example:

`cats/newcat.erb`

Where `newcat` is the `newcat` in `catsay --cat newcat`

Draw an ascii cat with `<= @message =>` where the text will go.

For example `cats/default.erb`:

```erb
<%= @message %>
   O
      o

      |\      _,,,---,,_
      /,`.-'`'    -.  ;-;;,_
     |,4-  ) )-,_..;\ (  `'-'
    '---''(_/--'  `-'\_)
```

Then send me a pull request.
