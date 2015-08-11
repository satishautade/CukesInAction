class Account
  def credit(amount)
    @balance=amount
  end 
  def balance
    @balance
  end
  def debit(amount)
    @balance -= amount
  end
end

class Teller
  def initialize(cash_slot)
    @cash_slot = cash_slot
  end 
  def withdraw_from(account,amount)
    @cash_slot.dispense(amount)
  end 
end

class CashSlot 
  def contents
    @contents or raise('I am empty')
  end   
  def dispense(amount)
    @contents = amount
  end
end
