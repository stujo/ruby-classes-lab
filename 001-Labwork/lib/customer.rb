class Customer
	attr_reader :first_name, :last_name, :date_of_birth, :available_credit

	def initialize(first_name, last_name, date_of_birth, available_credit)
		@first_name = first_name
		@last_name = last_name
		@date_of_birth = date_of_birth
		@available_credit = available_credit
	end

	def full_name()
		"#{@first_name} #{@last_name}"
	end

	def age()
  		Time.now.year - @date_of_birth.year
	end

	def use_credit(amount)
		@available_credit >= amount
		@available_credit -= amount
	end	

end




#first_name, last_name, date_of_birth, available_credit