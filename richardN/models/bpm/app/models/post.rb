class Post < ActiveRecord::Base
  belongs_to :blog
  has_many :messages
  validates :post, :content, presence: true, length:{in: 7...255}
end
