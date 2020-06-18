class Author < ActiveRecord::Base
    has_many :citations
    has_many :books, through: :citations
end