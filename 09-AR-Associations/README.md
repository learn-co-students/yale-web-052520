# ActiveRecord Associations

### LGs:
- [x] **Practice with ActiveRecord::Base instance and class methods**
- [x] **Implement one-to-many relationships using ActiveRecord has_many and belongs_to**
- [x] **Implement many-to-many relationships using ActiveRecord has_many, :through**

---

* **Practice with ActiveRecord::Base instance and class methods**
    * ActiveRecord give us few methods:
        * .new
        * #save
        * .create = .new + #save
        * .all
        * .first
        * .find
        * .find_by(column_name: value ) 
* **Implement one-to-many relationships using ActiveRecord has_many and belongs_to**
    * Find Author for Book:
        ```ruby
        def author
    	 Author.find(self.author_id)
        end
        ```
    * Find Books for Author:
        ```ruby
        def books
            Book.where(author_id: self_id)
        end
        ```
    * Currently relationship
    ```ruby
        has_many :books
        belongs_to :author
    ```
    * Rake console
        * Book.first.author
        * Author.first.books
    * Singular and plural naming
 
* **Implement many-to-many relationships using ActiveRecord has_many, :through**
    * Models
    * Bakery->Review<-Customer
    * Migrations
    * Models

---

### Tasks:
1. Check `Author.where(name: "Jack)"`
2. Define relationships in `review`  and `customer` models

---
Extra Reading: 
* **Practice looking up library documentation**
    * https://guides.rubyonrails.org/active_record_basics.html
    * Specifically, looking up documentation for ActiveRecord
    * Migrations
    * Association Macros
    * Rake tasks