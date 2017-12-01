class Blog < ActiveRecord::Base
    has_many :posts
    validates :name, :desciption, presence: true
end
