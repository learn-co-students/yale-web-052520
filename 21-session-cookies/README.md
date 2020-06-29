# Session and Cookies

### LGs:
- [ ] Explain the stateless nature of HTTP
- [ ] Explain that session is built on cookies
- [ ] Implementing Session Variables

#### Explain the stateless nature of HTTP

* The problem of remembering a users score
* The request response cycle
* How each HTTP request is treated as separate

#### Explain that session is built on cookies

* What is session? what is cookie?
* Rails sessions helps solve this problem by following code:
```ruby
 def create
        if session[:number_correct] == nil
            session[:number_correct] = 0
        end
        response = Response.create(response_params)
        if response.question.correct_answer == response.answer
            session[:number_correct] = session[:number_correct] + 1
            puts "Correct"
        else
            puts "Incorrect"
        end
        puts "Answered Correctly: #{session[:number_correct]}"
        redirect_to '/random-question'
end
```
* Application tab show cookies
* Cookies carry are session variables from request to request

##### TASK: Take a min and than explain in your own words:
* What is session? what is cookie?

#### Implementing Session Variables

* How our :number_correct is persisted in the session(review)
* How to use the session variable in the view:
```ruby
...
    before_action :define_question, :define_response, :define_number_correct
    ...
    def  define_number_correct
        @number_correct = session[:number_correct]
    end
    ...
```
