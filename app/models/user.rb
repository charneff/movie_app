class User < ActiveRecord::Base
    has_many :movies

    has_secure_password
    # authenticate
    # auto validate that your have typed in a password
    # validates that the password_confirmation and password match IF you included password_confirmation as a param
    # password recovery
    # password=
    validate :contains_number_spec_char_no_space
    validates_presence_of :username, :email
    validates_uniqueness_of :username, :email

    def contains_number_spec_char_no_space
        if !/\d/.match?(username)
            errors.add(:username, "must contain a number")
        end
        
        if !/\W/.match?(username)
            errors.add(:username, "must contain a special character")
        end 

        if /\s/.match?(username)
            errors.add(:username, "cannot contain a space")
        end 
    end 
    
end 