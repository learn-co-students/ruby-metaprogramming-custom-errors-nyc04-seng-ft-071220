require_relative './partner_error'

class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    self.partner = person
      if person.class != Person
        begin
        raise PartnerError
        rescue PartnerError => error
          puts error.message
        end 
      else
      person.partner = self
      end 
  end

  # Adding custom error on partner_error.rb


end

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name




