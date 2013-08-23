class Database
  
  def initialize
  end

  def self.id
  	@id
  end

  
  @contacts = []
  @id = 1000

  def self.add_contact(contact)
    contact.id = @id
    @contacts = @contacts.push contact
    @id += 1
  end

  def self.contacts
  	@contacts
  end
 
end