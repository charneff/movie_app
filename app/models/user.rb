class User < ActiveRecord::Base
    has_many :movies

    has_secure_password
    # authenticate
    # auto validate that your have typed in a password
    # validates that the password_confirmation and password match IF you included password_confirmation as a param
    # password recovery
    # password=
    validates_presence_of :username, :email
    validates_uniqueness_of :username, :email
    
end 