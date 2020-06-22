# Rails Associations (One-Many)

### LGs:
- [ ] Refresher on has_many and belongs_to
- [ ] Use Rails form helper methods that create an associated object


#### Refresher on has_many and belongs_to
* Dog has many toys
* Toy belongs to a Dog

#### Use Rails form helper methods that create an associated object

* `f.collection_select`

# Rails Associations (Many-Many)

### LGs:
- [ ] Refresher on has_many and through
- [ ] Use Rails form helper methods that create an associated object

#### Refresher on has_many and through
* Author has_many citations
* Author has_many books through citations
* Book has_many citations
* Book has_many authors through citations
* Citation belongs_to Book
* Citation belongs_to Author

#### Use Rails form helper methods that create an associated object
* `f.collection_check_boxes`
* params => `authors_ids: [ ]`
