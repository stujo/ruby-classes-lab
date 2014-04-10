class Customer
	attr_reader :first_name, :last_name, :date_of_birth, :available_credit, :purchases
		def initialize (first, last, dob, available_credit)

			@first_name = first
			@last_name = last
			@date_of_birth = dob
			@available_credit = available_credit
			@purchases= []
		end

		def full_name
		"#{@first_name} #{@last_name}"
		end
	
		def age
		#calculated age (Time.now.year - birthyear)
		Time.now.year - @date_of_birth.year
		end
		def use_credit(amount)	
			if @available_credit  >= amount
   			 @available_credit -=amount
   			return true
   		else false
   			end
  			
  		end

  		def attempt_credit_purchase(amount, description)
  			if use_credit(amount)
  				@purchases.push description
  			return	 "APPROVED: $#{'%.2f' % amount} #{description}"
  			else 	
  				return "DECLINED: $601.00 iPhone Purchase! Only $600.00 credit available"
  			end
  				
   		end
		def purchase_history
  				return @purchases.join "\\n"
		end
end


