class Database
  @contacts = []
  @id = 1000

  def set_id
  end


  def self.add_contact(contact)
    contact = contact.push @id
    @contacts = @contacts.push contact
    @id += 1
    puts "\nContact added successfully. Select another option: \n\n"
    p self.contacts
  end

  def self.contacts
    @contacts
  end

  def self.id
  	@id
  end

end