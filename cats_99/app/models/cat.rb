# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  color       :string
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Cat < ApplicationRecord
    include ActionView::Helpers::DateHelper
    COLORS = ["brown", "black", "orange", "white"]
    validates :color, inclusion: {in: COLORS,  message: "%{value} is not a valid color"}
    validates :birth_date, presence: true
    validates :name, presence: true
    validates :sex, inclusion: {in: %w(M F), message: "%{value} is not a valid choice"}

    def age
        time_ago_in_words(birth_date)
    end
end
