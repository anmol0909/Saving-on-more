class About < ApplicationRecord

  def self.ransackable_attributes(auth_object = nil)
      ["created_at", "title", "desc", "updated_at"]
  end
end
