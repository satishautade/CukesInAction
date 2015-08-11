Given(/^my account has been credited with (#{CAPTURE_AMOUNT})$/) do |amount|
  my_account.credit(amount)
  my_account.balance.should eq(amount), "Expected account balance to be #{amount} but got #{my_account.balance}"
end

When(/^I withdraw (#{CAPTURE_AMOUNT})$/) do |debit_amount| 
  teller.withdraw_from(my_account,debit_amount)
end

Then(/^(#{CAPTURE_AMOUNT}) should be dispensed$/) do |dispensed_amount|
  my_account.debit(dispensed_amount)
  cash_slot.contents.should == dispensed_amount
end

Then(/^the balance of the account should be (#{CAPTURE_AMOUNT})$/) do |amount|
  my_account.balance.should eq(amount), "Expected account balance to be #{amount} but got #{my_account.balance}"
end
