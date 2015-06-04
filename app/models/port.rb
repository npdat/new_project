class Port < ActiveRecord::Base
  belongs_to :country
  has_many :boarding_document
end
