#Prefer instance methods to Instance Variables. Lesson 236.
class BankAccount

  def initialize
    @amount = 5000
  end

#self.amount or amount - instance methods
  def status
    "Your bank account has a total of #{amount} dollars"
  end

  def amount
    @amount / 125
  end

end

my_account = BankAccount.new
p my_account.status
