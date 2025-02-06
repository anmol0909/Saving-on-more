class Sell < ApplicationRecord
  validates :description, presence: true
  
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "description", "updated_at"]
  end
end
