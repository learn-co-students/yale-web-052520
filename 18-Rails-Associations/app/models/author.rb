class Author < ApplicationRecord
    has_many :citations
    has_many :books, through: :citations

    def hi
        p "Hi from author model!!"
    end

    def speak
        whisper
    end

    private

    def whisper
        p "My name is  ....."
    end
end
