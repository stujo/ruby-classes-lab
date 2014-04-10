module OrderProcessor

	def self.processOrder (customer, items)
		receipt = []
		receipt.push '=' * 80
		receipt.push "\nOrder Receipt"
		receipt.push '-------------'
		receipt.push "Customer name:                     #{customer.full_name}"
		receipt.push "Customer age:                      #{customer.age}"
		receipt.push "Customer's opening credit limit:  $#{'%.2f' % customer.available_credit}"

		receipt.push "\nItems Requested"
		receipt.push '---------------'
		items.each do |item|
		receipt.push customer.attempt_credit_purchase(item[:price], item[:description])
		end

		receipt.push "\nCustomer's closing credit limit is  $#{'%.2f' % customer.available_credit}"
		receipt.push "\nPurchase History"
		receipt.push '----------------'
		receipt.push customer.purchase_history
		receipt.push ""
		receipt.push '=' * 80
		receipt.join("\n")
	end
end



#  ================from original customer file ====================================================================

# # Attempt the purchase
# # If the customer has enough credit (see: use_credit) This function
# # returns: A string with the appropriate APPROVED or DECLINED
# # message for the receipt
# def attempt_credit_purchase (customer, amount, description)
#   if use_credit(customer, amount)

#     # TODO: Ooops I forgot to store the item description in an array for the customer!
#     # You'll need to initialize the purchases array in the initialize method or
#     # check it here, how will I do this once Customer is a Class?
#     #  @purchases.push description

#     "APPROVED: $#{'%.2f' % amount} #{description}"
#   else
#     "DECLINED: $#{'%.2f' % amount} #{description} Purchase! Only $#{'%.2f' % available_credit(customer)} credit available"
#   end
# end

# # Should return a joined array of purchased item descriptions, each separated by "\n"
# def purchase_history(customer)
#   # TODO: I should be looking at @purchases once I've converted Customer to a Class
#    "\nSorry print_purchase_history not implemented yet!"
# end




# ====================================================================================
# def processOrder (customer, items)
#   receipt = []
#   receipt.push '=' * 80
#   receipt.push "\nOrder Receipt"
#   receipt.push '-------------'
#   receipt.push "Customer name:                     #{full_name(customer)}"
#   receipt.push "Customer age:                      #{age(customer)}"
#   receipt.push "Customer's opening credit limit:  $#{'%.2f' % available_credit(customer)}"


#   receipt.push "\nItems Requested"
#   receipt.push '---------------'
#   items.each do |item|
#     receipt.push attempt_credit_purchase(customer, item[:price], item[:description])
#   end

#   receipt.push "\nCustomer's closing credit limit is  $#{'%.2f' % available_credit(customer)}"
#   receipt.push "\nPurchase History"
#   receipt.push '----------------'
#   receipt.push purchase_history(customer)
#   receipt.push ""
#   receipt.push '=' * 80

#   receipt.join("\n")
# end
