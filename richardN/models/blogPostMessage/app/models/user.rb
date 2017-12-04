class User < ActiveRecord::Base
    has_many :owners
    has_many :messages
    has_many :posts
    has_many :blogs, through: :owners
    has_many :blog_posts, through: :posts, source: :blog 
    EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
    validates :email, uniqueness: {case_sensitive: false}, format: {with: EMAIL_REGEX}
    validates :first_name, :last_name, :email, presence: true
end
