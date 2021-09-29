class Book < ApplicationRecord
	validates :title, presence: true
	# added code for more attributes ?
	validates :author, presence: true
	validates :price, presence: true
	validates :published_date, presence: true
end
