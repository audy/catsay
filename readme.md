# Catsay [![Build Status](https://secure.travis-ci.org/audy/catsay.png?branch=master)](http://travis-ci.org/audy/catsay) [![Coverage Status](https://coveralls.io/repos/audy/catsay/badge.png)](https://coveralls.io/r/audy/catsay) [![Code Climate](https://codeclimate.com/github/audy/catsay.png)](https://codeclimate.com/github/audy/catsay) [![security](https://hakiri.io/github/audy/catsay/master.svg)](https://hakiri.io/github/audy/catsay/master)

Cats in your `$SHELL`. Pairs well with [lolcat](https://github.com/busyloop/lolcat).

```
$ catsay --cat octocat "Fork me on GitHub!"
               MMM.           .MMM
               MMMMMMMMMMMMMMMMMMM
               MMMMMMMMMMMMMMMMMMM
              MMMMMMMMMMMMMMMMMMMMM
             MMMMMMMMMMMMMMMMMMMMMMM
            MMMMMMMMMMMMMMMMMMMMMMMM    Fork me on GitHub!
            MMMM::- -:::::::- -::MMMM    |/
             MM~:~   ~:::::~   ~:~MM
        .. MMMMM::. .:::+:::. .::MMMMM ..
              .MM::::: ._. :::::MM.
                 MMMM;:::::;MMMM
          -MM        MMMMMMM
          ^  M+     MMMMMMMMM
              MMMMMMM MM MM MM
                   MM MM MM MM
                   MM MM MM MM
                .~~MM~MM~MM~MM~~.
             ~~~~MM:~MM~~~MM~:MM~~~~
            ~~~~~~==~==~~~==~==~~~~~~
             ~~~~~~==~==~==~==~~~~~~
                 :~==~==~==~==~~
```

## Installation

`gem install catsay`

Or, if you have added `certs/audy.pem`:

`gem install catsay -P HighSecurity`

## Usage

```
usage: catsay ...
    -c, --cat [TEMPLATE]             Chooses the cat.
    -o, --out [OUTFILE]              Output file (default=/dev/stdout)
    -i, --in [INFILE]                Input file (default=/dev/stdin)
    -l, --list                       List cats and exit
    -e, --verbose                    Annoying kitty
```

## Contributing

This gem needs more cats! To add a cat, create an `erb` file in the `cats/`
directory. This file is just a text file. Add your cat and include the special
string `<%= @message %>` wherever you want the message to go. Then send me a
pull-request.
