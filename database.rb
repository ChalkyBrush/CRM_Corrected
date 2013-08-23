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
    contacts.sort_by {|obj| obj.id}
  end

  def self.modify_contact(contact,input_id)
  	@contacts = @contacts.push(contact)
  	contact.id = input_id
  	contacts.sort_by {|obj| obj.id}
  end

  def self.contacts
  	@contacts
  end
 
end