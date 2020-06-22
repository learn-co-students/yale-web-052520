# Rails-Forms

### LGs:
- [ ] Use form_for, link_to and form_with
- [ ] Understand Strong params
- [ ] Understand how to use before_action

#### Use form_for, link_to and form_with
* form_for => instance 
* form_tag => url
* form_with => url/model
* link_to
* Partials

**Task:** Create a form for editing an exsiting dog 

#### Understand Strong params
* Why do we need strong params?
    * ActionController => permitted => false
    * permitted => true
    * **Strong Parameters** is a feature of Rails that prevents assigning request parameters to objects unless they have been explicitly permitted.
    * This is a better security practice to help prevent accidentally allowing users to update sensitive model attributes.
    * More details [here](https://edgeguides.rubyonrails.org/action_controller_overview.html#strong-parameters)

#### Understand how to use before_action
* DRY => Do not repeat yourself
---
#### Nice to know:
* Nokogiri: Ruby gem providing HTML, XML, and Reader parsers
    * Nokogiri is an XML/HTML/CSS parser.
    * Nokogiri is a dependency of rails-dom-testing which is required by Rails.
    * As far as I see it rails-dom-testing is used to verify certain parts of a rendered HTML/CSS page.
    * source: https://stackoverflow.com/questions/41795664/what-s-the-purpose-of-nokogiri-in-rails

