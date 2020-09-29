class User < ApplicationRecord
    has_secure_password
    # has_secure_password goes in the MODEL
    # authenicate passwords
    # validation- we check for password in the user active record
    # requires us to have a password_digest in our user TABLE column
end
