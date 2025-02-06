class Category < ApplicationRecord
	has_many :products
  has_one_attached :image
  validates :name, :image, presence: true
  
  def self.ransackable_associations(auth_object = nil)
    ["products"]
  end
	def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "title", "body", "author", "updated_at"]
  end
end
