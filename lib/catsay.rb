require 'erb'

# this is real ugly
includes = %w{cat exceptions}

includes.each do |inc|
  require File.expand_path(File.join(File.dirname(__FILE__), inc))
end

module Catsay

  # handle CLI stuff
  class CLI
  class << self

    # - parses command-line arguments
    # - finds the cat and makes it meow
    #   (or gives an error)
    def run!
      @options = parse_arguments

      if @options[:verbose]
        p @options
      end

      cat = @options[:cat]

      output_handle.puts Cat.new(:template => template).meow(message)
    end

    private

    # returns a file handle for the input
    # if there is one or returns nil
    def input_handle
      if @options[:message] != nil
        nil
      elsif @options[:input]
        begin
          File.open(@options[:input])
        rescue Errno::ENOENT
          $stderr.puts "no such file #{@options[:input]}"
          exit -1
        end
      else
        $stdin
      end
    end

    # check if output is a string
    # if so, open it because that's probably a filename
    # otherwise, just return $stdout
    def output_handle
      if @options[:output].is_a? String
        File.open(@options[:output], 'w')
      else
        $stdout
      end
    end

    # Given a symbol for a cat template, check if it
    # exists. If it does, return the cat template, otherwise
    # exits with an error
    def template
      begin
        heisenberg?(@options[:cat])
      rescue DeadKitty
        $stderr.puts "I haven't met a kitty named \"#{@options[:cat]}\" yet."
        exit -1
      else
        File.read(template_path_for(@options[:cat]))
      end
    end

    # checks if a template exists given a template id
    # if not, raises DeadKitty exception.
    def heisenberg?(cat)
      if File.exists? template_path_for(cat)
        cat
      else
        raise DeadKitty
      end
    end

    # returns the file path given a template id
    # the template id should be the name of the file
    # in the cats/ directory minus the cats/ and
    # .erb extension
    def template_path_for(template_id)
      File.join(File.expand_path(File.dirname(__FILE__)), '..', 'cats', "#{template_id}.erb")
    end

    # fetches the input by first looking for
    # an input handle and then looking for
    # options[:text] (text specified after arguments)
    def message
      if input_handle.nil?
        @options[:message]
      else
        input_handle.read
      end
    end

    # parses the command-line arguments
    def parse_arguments

      options = Hash.new

      OptionParser.new do |opts|
        opts.banner = "usage: catsay ..."

        opts.on('-c', '--cat [TEMPLATE]', 'Chooses the cat.') do |cat|
          options[:cat] = cat.to_sym || :default
        end

        opts.on('-o', '--out [OUTFILE]', 'Output file (default=/dev/stdout)') do |output|
          options[:output] = output
        end

        opts.on('-i', '--in [INFILE]', 'Input file (default=/dev/stdin)') do |input|
          options[:input] = input
        end

        opts.on('-e', '--verbose', 'Annoying kitty') do |verbose|
          options[:verbose] = verbose
        end
      end.parse!

      # check if there is a message, otherwise set message to nil
      message = ARGV.join(' ')
      options[:message] = message ==  "" ? nil : message

      # check if there is a cat template, otherwise set to :default
      options[:cat] = options[:cat] || :default

      return options

    end

    end # class << self
  end


end
