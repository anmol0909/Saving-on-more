class Product < ApplicationRecord
	has_one_attached :image
	belongs_to :category
	validates :item_name, :item_upc, :item_lot_codes, :category_id, :image, presence: true
  validates :item_number, presence: true, uniqueness: true
  validate :validate_item_expiration_date
	
  def self.ransackable_attributes(auth_object = nil)
			["created_at", "id", "image", "item_expiration_date", "item_lot_codes", "item_name", "item_number", "item_upc", "updated_at", "category_id"]
	end
	
  def self.ransackable_associations(auth_object = nil)
    ["category", "image_attachments", "image_blobs"]
  end

  def validate_item_expiration_date
    if item_expiration_date.blank?
      self.item_expiration_date = 'NA'
    elsif item_expiration_date == 'NA'
      # Do nothing, it's already 'NA'
    elsif Date.parse(item_expiration_date).nil?
      errors.add(:item_expiration_date, 'is not a valid date')
    end
  end

  scope :order_id_desc, -> { order('id desc') }
end 
