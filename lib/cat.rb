module Catsay

# Cat class does the meowing.
class Cat

  # create a new instance of cat
  # :template specifies which template to use
  # the default template is :default
  def initialize(kwargs = {})
    @template = kwargs[:template]
    return self
  end

  # renders the message using an erb template
  # returns the rendered template
  def meow(message)
    @message = message
    ERB.new(@template).result(binding)
  end
end

end # module Catsay
