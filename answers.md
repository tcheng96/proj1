# Q0: Why is this error being thrown?

Because Pokemon was never initialized and we're trying to use it.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear?

Pokemons are appearing probably because of some code that's happening on the backend. The common factor is that they're all Pokemon and that they can be owned by only one trainer. In addition, one trainer can also have multiple Pokmemon. All Pokemon fit under the Pokemon model. The relations I mentioned above are specified in Trainer.rb and Pokemon.rb.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

It creates a button that looks for capture_path(id: @pokemon) when pressed. I believe that capture_path looks into PokemonsController and calls on its Capture method to redirect and make the necessary changes to the database.

# Question 3: What would you name your own Pokemon?

Not sure what this question is asking. Is this question referring to nicknames that we can usually give to Pokemon? Right now, we can't give our Pokemon nicknames because we haven't implemented a way to create Pokemon.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

redirect_to trainer_path(@pokemon.trainer)
I passed in the trainer path of the pokemon. It is a path since it is essentially the path of the Pokemon's trainer. We can see it by running rake routes.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

This line basically verifies the validation that we specificed in Pokemon.rb. After it has detected something wrong with the input, it'll flash us the error after converting the error into a sentence.

# Give us feedback on the project and decal below!

Really fun project! I think it gave me a lot of the ground work to feel like I can do something decently substantial in Rails. I thought there was quite a bit of starter code given, which is nice but I felt a lot more dependent on it at the same time. One of the necessary evils related to having starter code I guess. Nonetheless, great project! Thanks!

# Extra credit: Link your Heroku deployed app
