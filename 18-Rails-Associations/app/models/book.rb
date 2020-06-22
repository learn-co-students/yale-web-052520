class Book < ApplicationRecord
    has_many :citations
    has_many :authors, through: :citations
end
