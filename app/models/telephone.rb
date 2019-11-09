class Telephone < ApplicationRecord
  belongs_to :friend

	validates :number, presence: true, uniqueness: true., #空欄・重複禁止
	  length{ minimum: 8, maximum: 20} #８文字以上２０文字以内
		
end
