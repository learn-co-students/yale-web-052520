# Rails Validations

### LGs:
* - [ ] Create server side validations using Active record
    * Validate different data types i.e. string, numericality, boolean
* - [ ] Implement the Flash Hash to render error messages

#### Create server side validations using Active record
* Why we need validations?
    - This is your typical user:
  ![Your users on your site](https://camo.githubusercontent.com/bd5a0e0355fa6a8c1f5478f197be5562a479d41a/68747470733a2f2f6d656469612e67697068792e636f6d2f6d656469612f5a665531314f44616e6c6f43412f67697068792e676966)
* Validation in Model
* In Controller check for validations
   ```rails
     if @dog.valid?
      @dog.save
      redirect_to @dog
    else
      redirect_to new_dog_path
    end
    ```
* Validate different data types i.e. string, numericality, boolean

**TASK:** Validates age for a dog => greater than 0 and less than 30

#### Implement the Flash Hash to render error messages
* What are flash varibales?
    * available for only one request-response cycle
* `flash[:errors] = @dog.errors.full_messages`
```erb
<% if flash[:errors] %>
<ul>
    <% flash[:errors].each do |e| %>
        <li><%= e %></li>
    <% end %>
</ul>
<% end %>
```