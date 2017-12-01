class Message < ActiveRecord::Base
  belongs_to :post
  validates :author, :messages, presence: true
end
