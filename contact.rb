require ("./database")

class Contact
  
attr_accessor :first_name, :last_name, :email, :note, :id

  def initialize(first_name, last_name, email, note)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
  end

  def modify(first_name, last_name, email, note, id)
  	@first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
    @id = id
  end

end


