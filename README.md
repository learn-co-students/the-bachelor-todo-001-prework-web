---
tags: nested iteration, todo
languages: ruby
resources: 2
---

# The Bachelor Todo

![bachelor holding a rose](https://s3-us-west-2.amazonaws.com/web-dev-readme-photos/the-bachelor/The-Bachelor.jpg)

## Background

[The Bachelor](http://en.wikipedia.org/wiki/The_Bachelor_%28U.S._TV_series%29) is a dating show that has celebrated over 19 seasons. As it turns out, your best friend is obsessed with The Bachelor and keeps asking you really strange questions, like, "What was the name of that girl who was a cruise ship singer?". 

You decided to scrape Wikipedia to get all the info on seasons 9 - 19 to help her answer these burning questions. Your task now is to create methods that navigate through this massive amount of data to find answers to her questions.

## Instructions

The data you scraped is a hash, where the keys are the season number and the values are contestant arrays. Within these arrays, each contestant has their own hash with the following key, value pairs:

* Name
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


Take a look at `spec/fixtures/contestants.json`. This is the data that the spec will pass to your arguments, so get familiar with it.

Take a look at her questions:

1. Who won season 13?
2. What is the name of the woman whose occupation is cruise ship singer?
3. How many contestants have been from Brooklyn, NY over the seasons 9 - 19?
4. What was the occupation of the contestant from Cranston, Rhode Island?
5. What is the average age (rounded to the closest whole number) of the contestants from season 12?

Run your testing suite to get started.

**Make sure to run `bundle` from within the lab's directory before you get started.**

## Resources

* [Ruby's each method on arrays](http://www.ruby-doc.org/core-2.2.0/Array.html#method-i-each)
* [Ruby's each method on hashes](http://www.ruby-doc.org/core-2.2.0/Hash.html#method-i-each)
* [Ruby's hsh[key] → value method](http://ruby-doc.org/core-2.1.5/Hash.html#method-i-5B-5D)
