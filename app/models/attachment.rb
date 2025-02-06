class Attachment < ApplicationRecord
   has_one_attached :image
   validate :image
end
