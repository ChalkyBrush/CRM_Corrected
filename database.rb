class Database
  
  def initialize
  end

  def self.id
  	@id
  end

  
  @contacts = []
  @id = 1000

  def self.add_contact(contact)
    #contact = contact.push @id
    contact.id = @id
    @contacts = @contacts.push contact
    @id += 1
  end

  def self.contacts
  	@contacts
  end
  # def self.contacts
  # 	output_string = ""
  # 	@contacts.each { |a|
  # 	output_string = output_string + "\nID: #{a.last}\n"
  # 	a.each {|b|
  # 		if !b.is_a? Integer
  # 	output_string = output_string +"#{b}\n"
  # 		end
  # 	}
  # 	}
  # 	return output_string
  #   #@contacts
  # end

  # def self.delete_contact(delete_id)
  # 	output_string = ""
  # 	nomatch=true
  # 	@contacts.each {|a|
  # 		if a.last.to_i==delete_id.to_i
  # 				nomatch=false
  # 			  	output_string = output_string + "\nID: #{a.last}\n"
  # 				a.each {|b|
  # 				if !b.is_a? Integer
  # 				output_string = output_string +"#{b}\n"
  # 				end
  # 				}
  # 				puts output_string
  # 				puts "Is going to be removed permanently. Confirm? (Y/N)"
  # 				user_input = gets.chomp.upcase
  # 				if user_input == "Y"
  # 				@contacts=@contacts - [a]
  # 				puts "\e[H\e[2J"
  # 				puts "\nContact deleted. Choose another option\n\n"
  # 				else
  # 				puts "\e[H\e[2J"
  # 				puts "\nContact was not deleted. Choose another option\n\n"
  # 				end
  # 		end
  # 	}
  # 	if nomatch==true
  # 		puts "\e[H\e[2J"
  # 		puts "\nNo contact with ID:#{delete_id} found. Choose another option\n\n"
  # 	end

  # end

  # def self.modify_contact(modify_id)
  # 	output_string = ""
  # 	nomatch=true
  # 	@contacts.each {|a|
  # 		if a.last.to_i==modify_id.to_i
  # 				nomatch=false
  # 			  	output_string = output_string + "\nID: #{a.last}\n"
  # 				a.each {|b|
  # 				if !b.is_a? Integer
  # 				output_string = output_string +"#{b}\n"
  # 				end
  # 				}
  # 				puts output_string
  # 				puts "Do you wish to modify this contact? (Y/N)"
  # 				user_input = gets.chomp.upcase
  # 				if user_input == "Y"
  # 				CRM.modify_contact(modify_id.to_i)
  # 				puts "\e[H\e[2J"
  # 				puts "\nContact deleted. Choose another option\n\n"
  # 				else
  # 				puts "\e[H\e[2J"
  # 				puts "\nContact was not modified. Choose another option\n\n"
  # 				end
  # 		end
  # 	}
  # 	if nomatch==true
  # 		puts "\e[H\e[2J"
  # 		puts "\nNo contact with ID:#{modify_id} found. Choose another option\n\n"
  # 	end


  # end

 
end