class Person
  #your code here
  def initialize(attributes)
    attributes.each {|key, value| self.send(("#{key}="), value)}
  end
end
