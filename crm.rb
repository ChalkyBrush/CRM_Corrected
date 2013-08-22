require ("./contact")
require ("./database")

class CRM
	def initialize(name)
		@name = name
 	end

	def main_menu
	  print_main_menu
	  user_selected = gets.chomp.to_i
	  call_option(user_selected)
	end

	def print_main_menu
	  puts "Welcome to #{@name}."
	  puts "[1] Add a new contact"
	  puts "[2] Modify an existing contact"
	  puts "[3] Delete a contact"
	  puts "[4] Display all the contacts"
	  puts "[5] Display an attribute" 
	  puts "[6] Exit"
	  puts "Enter a number: "
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
  		print "Enter First Name: "
  		first_name = gets.chomp.downcase.capitalize
  		print "Enter Last Name: "
  		last_name = gets.chomp.downcase.capitalize
  		print "Enter Email Address: "
  		email = gets.chomp
  		print "Enter a Note: "
  		note = gets.chomp
  		contact = Contact.new(first_name, last_name, email, note)
	end

	def exit_program
		return true
	end
end

crm = CRM.new("Ryan's CRM")
crm.main_menu
