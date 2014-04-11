#references a general date library for Ruby
require 'date'
#references specific librarys in the lib directory
require_relative 'lib/customer_hash'
require_relative 'lib/process_customer'

customer = {
    first_name: 'Donald',
    last_name: 'Sumlington',
    date_of_birth: Date.parse('1970-02-14'),
    credit_limit: 500.00
}

items = [
    { price: 800, description: '4K HD FlatScreen'},
    { price: 3, description: 'Milk Duds'},
    { price: 5, description: 'Popcorn'},
    { price: 22, description: 'Movie Tickets'}
]

#Get the Receipt
# The processOrder method is contained in 'lib/process_customer' file.
receipt = processOrder(customer, items)

#Print it out!
puts receipt
