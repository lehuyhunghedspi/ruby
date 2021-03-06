class User < ActiveRecord::Base
	before_save{self.email=email.downcase}
	VALID_EMAIL_REGEX= /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :name ,presence:true
	validates :email, presence:true, length:{maximum:255},format:{with:VALID_EMAIL_REGEX},uniqueness:{case_sentitive:false}	
	has_secure_password

	
end
