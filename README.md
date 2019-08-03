# Advanced Nested Hash Manipulation II: The Bachelor

![bachelor holding a rose](https://s3-us-west-2.amazonaws.com/web-dev-readme-photos/the-bachelor/The-Bachelor.jpg)

## Objectives

* Learn about JSON data
* Practice iterating over nested hashes

## Background

[The Bachelor][] is a dating show that has celebrated over 19 seasons. As it
turns out, your best friend is obsessed with The Bachelor and keeps asking you
really strange questions, like, "What was the name of that girl who was a cruise
ship singer?".

You decided to [scrape][] Wikipedia to get all the info on seasons 9 - 19 to
help her answer these burning questions. Your task now is to create methods that
navigate through this massive amount of data to find answers to her questions.

[The Bachelor]: http://en.wikipedia.org/wiki/The_Bachelor_%28U.S._TV_series%29
[scrape]: http://ruby.bastardsbook.com/chapters/html-parsing/

## Instructions

### Understanding our Data Structure

The data you scraped is a hash, where the keys are the season number and the
values are contestant arrays. Within these arrays, each contestant has their own
hash with the following key, value pairs:

* Name
* Age
* Hometown
* Status (ex. values are "Winner", "Eliminated Week 2", etc.)
* Occupation

Here's an example of two seasons, each with only two contestants:

```json
{
  "season 30": [
    {
      "name":      "Beth Smalls",
      "age":       "26",
      "hometown":  "Great Falls, Virginia",
      "occupation":"Nanny/Freelance Journalist",
      "status":    "Winner"
    },
    {
      "name":       "Becca Tilley",
      "age":        "27",
      "hometown":   "Shreveport, Louisiana",
      "occupation": "Chiropractic Assistant",
      "status":     "Eliminated Week 8"
    }
  ],
  "season 29": [
    {
      "name":      "Ashley Yeats",
      "age":       "24",
      "hometown":  "Denver, Colorado",
      "occupation":"Dental Assitant",
      "status":    "Winner"
    },
    {
      "name":       "Sam Grover",
      "age":        "29",
      "hometown":   "New York, New York",
      "occupation": "Entertainer",
      "status":     "Eliminated Week 6"
    }
  ]
}
```

Take a look at `spec/fixtures/contestants.json`. This is the data that the spec
will pass to your arguments, so get familiar with it.

### Define JSON

[JSON](http://json.org/), or Javascript Object Notation, is a method of writing
data that is language-independent but uses conventions shared by many
programming languages in order to be widely readable/writable. For this reason,
JSON is considered a data-interchange language.

JSON is structured as a collection of name/value pairs enclosed in curly
braces––just like a ruby hash! Values can be ordered lists––just like arrays!
The data object in `spec/fixtures/contestants.json` that you'll be operating on
looks and behaves just like a Ruby hash. You'll encounter JSON much more in the
future when you begin working with scraping data from websites, getting data
from APIs and even building your own APIs.

> **Note**: When parsing JSON, we have the [option][] to have the parser
> automatically convert the String keys into symbols where it can. However, in
> this lab, we will leave the original String keys as is. When you are working
> with the full data set, for instance, you should be able to write something
> like `data["season 10"][0]["name"]` instead of `data[:"season 30"][0][:name]`.
> This is different than Ruby's default behavior where declaring a hash key as a
> String will result it in being converted to a Symbol.

[option]: https://ruby-doc.org/stdlib-2.6.3/libdoc/json/rdoc/JSON.html#method-i-parse-21

### Building our Methods

Run `learn` started. Then, follow the test output together with the instructions
below to solve this one.

1. Build a method, `get_first_name_of_season_winner`, that takes in two
   arguments, a hash called `data` (i.e. the data structure described above),
   and a season. The method should return the *first name* of that season's
   winner. **Hint**: you'll need to do some string manipulation to return only
   the first name of the winning lady.

    * Think about how you will iterate through the hash to get to the level that
      contains a contestant's status.
    * How will you check to see if a contestant's status equals `"Winner"`?

2. Build a method, `get_contestant_name`, that takes in the data hash and an
   occupation string and returns the name of the woman who has that occupation.

3. Build a method, `count_contestants_by_hometown`, that takes in two
   arguments––the data hash and a string of a hometown. This method should
   return a counter of the number of contestants who are from that hometown.
  
    * How will you keep track of contestants from a particular hometown? Think
      back to our looping lessons in which we set a counter variable equal to 0
      and incremented that counter under certain conditions.

4. Build a method `get_occupation`, that takes in two arguments––the data hash
   and a string of a hometown. It returns the occupation of the first contestant
   who hails from that hometown.

5. Build a method, `get_average_age_for_season`, that takes in two
   arguments––the data hash and a string of a season. Iterate through the hash
   and return the average age of all of the contestants for that season.

    * How will you iterate down into the level of the hash that contains each
      contestant's age?
    * How will you collect the ages of each contestant and average them?
      Remember that the values of the "age" keys are not numbers, they are
      strings. How do we convert strings to numbers in Ruby?
    * Remember that dividing *integers* in Ruby always rounds down. In this case
      though, we want the normal math sort of rounding (where .5 and higher
      rounds *up*), instead. Consider the difference between `to_f` and `to_i`.

## Resources

* [Ruby's each method on arrays](http://www.ruby-doc.org/core-2.2.0/Array.html#method-i-each)
* [Ruby's each method on hashes](http://www.ruby-doc.org/core-2.2.0/Hash.html#method-i-each)
* [Ruby's hsh[key] → value method](http://ruby-doc.org/core-2.1.5/Hash.html#method-i-5B-5D)
* [JSON Data](http://json.org/)
* [Rounding in Ruby](http://ruby-doc.org/core-2.2.0/Float.html#method-i-round)

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/the-bachelor-todo' title='Advanced Nested Hash Manipulation II: The Bachelor'>Advanced Nested Hash Manipulation II: The Bachelor</a> on Learn.co and start learning to code for free.</p>
