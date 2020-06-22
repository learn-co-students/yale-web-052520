class Author < ApplicationRecord
    has_many :citations
    has_many :books, through: :citations
end
