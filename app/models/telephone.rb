class Telephone < ApplicationRecord
  belongs_to :friend

	validates :number, presence: true, uniqueness: true,
	  length: { minimum: 8, maximum: 20},
    format: {
      with: /\A[0-9\(\)\-]*\z/,
      allow_blank: true,
      message: :invalid_telephone_number
      }
		
end
