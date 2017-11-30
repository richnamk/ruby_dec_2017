class User < ActiveRecord::Base
    validates :first_name, :last_name, :email_addy, presence:true, length:{minimum:2}
    validates :age, presence:true, numericality:{greater_than_or_equal_to:10, less_than:150}
end
