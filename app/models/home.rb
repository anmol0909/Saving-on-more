class Home < ApplicationRecord
    has_one_attached :image
    validates :image, presence: true
    
    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "image", "id", "updated_at"]
    end
    def self.ransackable_associations(auth_object = nil)
        ["image_attachment", "image_blob"]
      end
    
end
