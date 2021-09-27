require 'pry'
class User

def initialize(attributes)
  attributes.each do |key, value|
        self.class.attr_accessor(key)

    self.send("#{key}=", value)

  end
  end
end

nancy = User.new(name:'Nancy', age:30)
binding.pry