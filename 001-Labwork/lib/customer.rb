class Customer
  attr_accessor :first_name, :last_name, :date_of_birth, :available_credit
  attr_reader :available_credit, :purchases
  def initialize(first_name, last_name, date_of_birth, available_credit)
    @first_name = first_name
    @last_name = last_name
    @date_of_birth = date_of_birth
    @available_credit = available_credit
    @purchases = []
  end
  def full_name
    "#{@first_name} #{@last_name}"
  end
  def age
    Time.now.year - @date_of_birth.year
  end
  def use_credit(amount)
    if @available_credit >= amount
      @available_credit -= amount
    	true
    else
    	false
    end
  end
  def attempt_credit_purchase (amount, description)
    if use_credit(amount)
      true

      # TODO: Ooops I forgot to store the item description in an array for the customer!
      # You'll need to initialize the purchases array in the initialize method or
      # check it here, how will I do this once Customer is a Class?
      @purchases.push(description)

      "APPROVED: $#{amount}.00 #{description}"
    else
      false
    "DECLINED: $#{amount}.00 #{description} Purchase! Only $#{@available_credit}.00 credit available"
      
    end
  end
  def purchase_history
    return @purchases.join "\\n"
  end
end