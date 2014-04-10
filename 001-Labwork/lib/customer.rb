#require 'date'
class Customer

  attr_accessor :first_name, :last_name, :date_of_birth, :available_credit, :description, :purchases

  def initialize(first_name,last_name, date_of_birth, available_credit)
    @first_name=first_name
    @last_name=last_name
    @date_of_birth=date_of_birth
    @available_credit = available_credit
    @description=description
    @purchases=[]

  end

  def full_name 
    "#{@first_name} #{@last_name}"
  end

  def age
    Time.now.year - @date_of_birth.year
  end 

  def use_credit(amount)
    if @available_credit >= amount
      @available_credit-=amount
      true
    else
      false
    end
  end

  def attempt_credit_purchase (amount, description)
    if use_credit(amount)

    # TODO: Ooops I forgot to store the item description in an array for the customer!
    # You'll need to initialize the purchases array in the initialize method or
    # check it here, how will I do this once Customer is a Class?
    @purchases.push description

      "APPROVED: $#{'%.2f' % amount} #{description}"
    else
      "DECLINED: $#{'%.2f' % amount} #{description} Purchase! Only $#{'%.2f' % @available_credit} credit available"
    end

  end

  # Should return a joined array of purchased item descriptions, each separated by "\n"
  def purchase_history
  # TODO: I should be looking at @purchases once I've converted Customer to a Class
     @purchases.join("\\n")
   end






end















=begin
#######################################################################
def full_name(customer)
  "#{customer[:first_name]} #{customer[:last_name]}"
end

def age(customer)
  Time.now.year - customer[:date_of_birth].year
end

def available_credit(customer)
  customer[:credit_limit]
end	

def use_credit(customer, amount)
  if customer[:credit_limit] >= amount
    customer[:credit_limit]-=amount
  	true
  else
  	false
  end
end


# Attempt the purchase
# If the customer has enough credit (see: use_credit) This function
# returns: A string with the appropriate APPROVED or DECLINED
# message for the receipt
def attempt_credit_purchase (customer, amount, description)
  if use_credit(customer, amount)

    # TODO: Ooops I forgot to store the item description in an array for the customer!
    # You'll need to initialize the purchases array in the initialize method or
    # check it here, how will I do this once Customer is a Class?
    #  @purchases.push description

    "APPROVED: $#{'%.2f' % amount} #{description}"
  else
    "DECLINED: $#{'%.2f' % amount} #{description} Purchase! Only $#{'%.2f' % available_credit(customer)} credit available"
  end
end

# Should return a joined array of purchased item descriptions, each separated by "\n"
def purchase_history(customer)
  # TODO: I should be looking at @purchases once I've converted Customer to a Class
   "\nSorry print_purchase_history not implemented yet!"
end

=end