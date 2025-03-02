require 'pry'

class BankAccount

	attr_reader :name
	attr_accessor :balance, :status

	def initialize(name, balance = 1000, status = "open")
		@name = name
		@balance = balance
		@status = status
	end

	def deposit(amt)
		@balance += amt
	end

	def display_balance
		return "Your balance is $#{@balance}."
	end

	def valid?
		if @status == "open" && @balance > 0
			return true
		else
			return false
		end
	end

	def close_account
		@status = "closed"
	end

end
