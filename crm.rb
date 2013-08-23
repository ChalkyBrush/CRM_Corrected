require ("./contact")

class CRM
	def initialize(name)
		@name = name
		@exit = false
		@database = Database.new
		puts "\e[H\e[2J"
		puts "\nWelcome to #{@name}.\n\n"
 	end
	
	def is_a_number?(s)
  		s.to_s.match(/\A[+-]?\d+?(\.\d+)?\Z/) == nil ? false : true 
	end

	def main_menu
		while @exit == false
	  print_main_menu
	  user_selected = gets.chomp.to_i
	  puts ""
	  call_option(user_selected)
	  	end
	end

	def print_main_menu
	  puts "[1] Add a new contact"
	  puts "[2] Modify an existing contact"
	  puts "[3] Delete a contact"
	  puts "[4] Display all the contacts"
	  puts "[5] Display an attribute" 
	  puts "[6] Exit"
	  print "Enter a number: "
	end

	def call_option(user_selected)
	  add_new_contact if user_selected == 1
	  modify_existing_contact if user_selected == 2
	  delete_contact if user_selected == 3
	  display_contacts if user_selected == 4
	  display_an_attribute if user_selected == 5
	  exit_program if user_selected == 6
	end

	def add_new_contact
		puts "\e[H\e[2J"
		puts "Adding contact with ID #{Database.id}"
  		print "Enter First Name: "
  		first_name = gets.chomp.downcase.capitalize
  		print "Enter Last Name: "
  		last_name = gets.chomp.downcase.capitalize
  		print "Enter Email Address: "
  		email = gets.chomp
  		print "Enter a Note: "
  		note = gets.chomp
  		contact = Contact.new(first_name, last_name, email, note)
  		Database.add_contact(contact)
  		puts "\e[H\e[2J"
  		puts "\nContact added successfully. Select another option: \n\n"
	end

	def modify_existing_contact
		puts "\e[H\e[2J"
		puts "Modify contact with which ID?:"
		inputmatch = false
		idint = false
		modify_id = gets.chomp.to_i
		Database.contacts.each {|a|
  		if a.id == modify_id.to_i
  			inputmatch = true
  			display_individual_contact(a)
  			puts "\nIs going to be modified. Confirm? (Y/N)"
  			user_input = gets.chomp.upcase
  			if user_input == "Y"
  						while idint==false
  							print "Enter new ID: "
  							input_id = gets.chomp
  							if is_a_number?(input_id) == true
  							idint=true
  							else
  							print "\nInput is not a number. Please enter a numeric ID\n"
  							end
  						end
  						print "Enter First Name: "
  						first_name = gets.chomp.downcase.capitalize
  						print "Enter Last Name: "
  						last_name = gets.chomp.downcase.capitalize
  						print "Enter Email Address: "
  						email = gets.chomp
  						print "Enter a Note: "
  						note = gets.chomp
  				contact = Contact.new(first_name, last_name, email, note)
  				Database.modify_contact(contact,input_id.to_i)
  				Database.contacts.delete(a)
  				puts "\e[H\e[2J"
  				puts "Contact modified. Select another option\n\n"
  			else 
  				puts "\e[H\e[2J"
  				puts "Contact was not modifed. Select another option\n\n" 
  			end
  		end
  		}
  		if inputmatch == false
  			puts "\e[H\e[2J"
  			puts "\nNo contact found with ID: #{modify_id}. Select another option\n\n"
  		end
	end


	def delete_contact
		puts "\e[H\e[2J"
		puts "Delete contact with which ID?:"
		inputmatch = false
  		delete_id = gets.chomp
  		Database.contacts.each {|a|
  		if a.id == delete_id.to_i
  			inputmatch = true
  			display_individual_contact(a)
  			puts "\nIs going to be removed permanently. Confirm? (Y/N)"
  			user_input = gets.chomp.upcase
  			if user_input == "Y"
  				Database.contacts.delete(a)
  				puts "Contact deleted. Select another option\n\n"
  			else puts "Contact was not deleted. Select another option\n\n" 
  			end
  		end
  		}

  		if inputmatch == false
  			puts "\nNo contact found with ID: #{delete_id}. Select another option\n\n"
  		end

	end

	def display_contacts
		puts "\e[H\e[2J"
		Database.contacts.each {|a|
		display_individual_contact(a)
		}
		puts "\nContacts are listed above. Select another option\n\n"
	end

	def display_individual_contact(a)
		puts "\nID: " + a.id.to_s
		puts "Name: " + a.first_name + " " + a.last_name
		puts "E-mail: " + a.email
		puts "Note: " + a.note
	end

	def exit_program
		@exit = true
	end

end

crm = CRM.new("Ryan's CRM")
crm.main_menu

