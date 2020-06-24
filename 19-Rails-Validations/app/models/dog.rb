class Dog < ApplicationRecord
    has_many :toys

    validates :name, presence: true
    # validates :age, inclusion: 0...30
    validates :age, numericality: { only_integer: true, greater_than: 0, less_than: 30}
end
