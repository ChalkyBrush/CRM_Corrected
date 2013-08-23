CRM Program is completed to fulfill the user's initial requests.

The first CRM program I made databased each contact as an array instead of an object. 
Not only was it inefficient in case the user wanted to add new fields, but it also went against the purpose of the exercise.

The new program still databases the contacts in an array, but each contact is an instance of the Class Contact.

The code itself could be improved by using more methods. The crm.rb file seems messy.

The modify contact method was difficult because the user can change the ID. This app requires that the new ID be an integer.
The method works by deleting the instance of Contact, and then creating a new one with the user's input ID.
It then pushes the new object to the end of the database, and then sorts the contacts by ID in order to maintain some order.

If anyone knows a way to modify an object without deleting and then creating a new one, let me know.