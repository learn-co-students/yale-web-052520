class Review < ActiveRecord::Base
    belongs_to :customer#, :bakery will not work
    belongs_to :bakery
end