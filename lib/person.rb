class Person
  #your code here
attr_accessor :name, :birthday, :hair_color, :eye_color, :height,
:weight, :handed, :complexion, :t_shirt_size,
:wrist_size, :glove_size, :pant_length, :pant_width

# This is a key method of code below. Allows abstraction and
# future-proofing when scraping APIs from the web, where even if
# they change/updates the attributes they give, this same method
# will work down the line
  def initialize(attributes)
    attributes.each {|key, value| self.send(("#{key}="), value)}
  end
end
