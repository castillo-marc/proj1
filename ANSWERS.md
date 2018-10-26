# Q0: Why are these two errors being thrown?
The first error was thrown because before running "rails db:migrate," the Trainer table's schema had yet to be updated. The second error occurs because we have yet to make a Pokemon model, which some other methods had required up to that point.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
A new record is created in our Pokemon table via the index method of our home controller. The type of Pokemon that's created is determined in our seeds.rb file, which only allows the Pokemon that appears on screen to be one of 4 Pokemon species. Whichever of those 4 Pokemon actually appears is random because of our home controller's use of the sample method.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
This creates an actual button object that redirects to the path specified by the prefix capture. As for "capture_path(id:@pokemon)," it makes sure that the id value that allows you to identify which pokemon you're trying to capture gets passed into the redirect as parameters of the capture path.

# Question 3: What would you name your own Pokemon?
I've played every gen since gen 3 and have never nicknamed a mon in my life.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I basically redirected it to itself, but didn't use path syntax because I don't know how to pass in parameters correctly using the path syntax.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
The applications view in the layout folder knows to call the messages file, which renders any error messages in their own little dialogue boxes. Since this is yielded as part of the layout of the page, the error is able to be shown even after the redirect in my code.

# Give us feedback on the project and decal below!
Giving syntax or hints to documentation still doesn't get rid of the confusion of where pieces of code can be used. It's still a little disorienting jumping around between routes, controllers, views, seeds, schema, models, migrations, etc.

# Extra credit: Link your Heroku deployed app

https://github.com/castillo-marc/proj1
