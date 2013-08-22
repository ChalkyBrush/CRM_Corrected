class Database
  
  def initialize
  end
  
  @contacts = []
  @id = 1000

  def set_id
  end


  def self.add_contact(contact)
    contact = contact.push @id
    @contacts = @contacts.push contact
    @id += 1
    puts "\e[H\e[2J"
    puts "\nContact added successfully. Select another option: \n\n"
  end

  def self.contacts
  	output_string = ""
  	@contacts.each { |a|
  	output_string = output_string + "\nID: #{a.last}\n"
  	a.each {|b|
  		if !b.is_a? Integer
  	output_string = output_string +"#{b}\n"
  		end
  	}
  	}
  	return output_string
    #@contacts
  end

  def self.id
  	@id
  end

end