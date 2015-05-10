class AccountManager

	attr_accessor :user, :password, :website, :contador

	def initialize user, password, website
		@contador = false
		@user = user
		@password = password
		encoding_password
		@website = website
	end

	def encoding_password
   		resultado = '' 
   		n = 3
    	@password.each_char do |letra| 
        	n.times { letra = letra.next[0] } if letra.match(/[a-zA-Z]/) 
        	resultado << letra 
    		end 
    	
    	verify_encoded_password resultado
    	@contador = true
	end 

	def verify_encoded_password resultado
		if @contador == true
			puts "Password already encrypted"
		else
			@password = resultado
		end
	end

	def decoding_password
		n = 23
		resultado = '' 
    	@password.each_char do |letra| 
        	n.times { letra = letra.next[0] } if letra.match(/[a-zA-Z]/) 
        	resultado << letra 
    		end 
    	verify_decoded_password resultado
    	@contador = false
	end 

	def verify_decoded_password resultado
		if @contador == false
			puts "Password already decoded"
		else
			@password = resultado
		end
	end

end

class Manager

	attr_accessor :container_accounts, :account_already_encoded, :total_password_insecures, :total_password_secures

	def initialize
		@container_accounts = []
		@account_already_encoded = []
		@total_password_insecures = []
		@total_password_secures = []
	end

	def add account
		@container_accounts.push(account)
	end

	def show_accounts
		@container_accounts.each do |account|
			if account.contador == true
				@account_already_encoded.push(account)
			else
				puts "This account has not been encoded"
			end
		end
		puts @account_already_encoded
	end

	def count_insecure_accounts
		@container_accounts.each do |account|
			if account.password.length < 5
				@total_password_insecures.push(account)
			else
				@total_password_secures.push(account)
			end
		end
		puts "#{@total_password_secures.length} accounts are secures"
		puts "#{@total_password_insecures.length} accounts are insecures"
	end

end

a1 = AccountManager.new("Primero","uno","www.Facebook.com")
a2 = AccountManager.new("Segundo","dos","www.Google.com")
a3 = AccountManager.new("Quinto","alberto","www.Twitter.com")
m = Manager.new


=begin puts a.password
puts '----'
a.decoding_password
puts a.password
puts '----'
a.decoding_password
puts a.password
puts '----'
a.encoding_password
puts a.password
puts '----'
a.encoding_password
puts a.password
puts '----'
=end

m.add(a1)
m.add(a2)
m.add(a3)
m.count_insecure_accounts