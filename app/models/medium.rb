class Medium < ApplicationRecord
  #belongs_to :user
  has_one_attached :avatar do |a|
    a.variant :thumb, resize_to_limit: [50,50]
  end
end
