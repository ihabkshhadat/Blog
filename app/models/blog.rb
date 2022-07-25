class Blog < ApplicationRecord
  paginates_per 3
  # t.string "title"
  # t.text "content"
  validates :title,{:presence => true,
  :length=>{maximum: 150}
  }

  validates :content,:presence => true

  has_one_attached :header_image


end
