Clone, do NOT fork.


## README

Run through the standard Rails setup.

```
$ bundle install
$ rake db:{create,migrate}
$ rails s
```

Navigate to `http://localhost:3000`

This should bring up an error, but you should be able to start the server fine.

Background:  We will be querying the USDA API with an ingredient and
we will be retreiving a list of the ten most relevant foods that include that
ingredient.

Clone this repo:  `https://github.com/turingschool-examples/whats-in-my-food`

Documentation: `https://ndb.nal.usda.gov/ndb/doc/apilist/API-SEARCH.md`

Sign up for an API key here: `https://api.data.gov/signup/`


```
As a user,
When I visit "/"
And I fill in the search form with "sweet potatoes"
(Note: Use the existing search form)
And I click "Search"
Then I should be on page "/foods"
Then I should see a total of the number of items returned by the search. (531 for sweet potatoes)
Then I should see a list of ten foods sorted by relevance.

And for each of the foods I should see:
- The food's NDB Number
- The food's name
- The food group to which the food belongs
- The food's data source
- The food's manufacturer
```
