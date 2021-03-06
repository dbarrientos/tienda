class Product < ApplicationRecord
	belongs_to :category
	validates :price, presence: true

	before_save :premium_default

	scope :premium_all, -> { where(premium: true)}
	scope :last_n, ->(n) { limit(n) }
	# validates :category_id, presence: true #esto es para rails 4

	def premium_default
		unless self.premium.present? || self.premium == true
			self.premium = false
		end
	end
end
