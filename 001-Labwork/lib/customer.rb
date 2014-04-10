require 'date'
require_relative './orderprocessor'

class Customer

	attr_accessor :first_name, :last_name, :date_of_birth, :credit_limit
	attr_reader :purchases

	def initialize(first_name, last_name, date_of_birth, credit_limit)
		@first_name = first_name
		@last_name = last_name
		@date_of_birth = date_of_birth
		@credit_limit = credit_limit
		@purchases = []
	end

	def full_name
		"#{@first_name} #{@last_name}"
	end

	def age
  	Time.now.year - @date_of_birth.year
	end

	def available_credit
  	@credit_limit
	end

	def use_credit(amount)
  if @credit_limit >= amount
    @credit_limit -= amount
  	true
  else
  	false
  end
	end

	def attempt_credit_purchase(amount, description)
  	if use_credit(amount)
    @purchases.push description
    "APPROVED: $#{'%.2f' % amount} #{description}"
  	else
    "DECLINED: $#{'%.2f' % amount} #{description} Purchase! Only $#{'%.2f' % @credit_limit} credit available"
  	end
	end
	
	def purchase_history
  	@purchases.join('\n')
	end
end
