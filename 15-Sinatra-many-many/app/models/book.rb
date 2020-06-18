class Book < ActiveRecord::Base
    has_many :citations
    has_many :authors, through: :citations
end