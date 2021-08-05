class Post < ActiveRecord::Base
  belongs_to :blog
  validates :title, :content, presence: true, length: { in: 7..200 }
  has_many :messages, dependent: :destroy
end
