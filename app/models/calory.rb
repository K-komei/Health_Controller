class Calory < ApplicationRecord
    validates :Day, presence: true
    validates :cal, presence: true
    validates :item, presence: true
end
