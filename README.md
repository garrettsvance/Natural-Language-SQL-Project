# **Natural-Language-SQL-Project**
**Due** Oct 5

# Instructions
## Summary
In this project you will design a database and create a natural language interface to it using AI. 

## Questions to Ask Yourself
* How good is GPT at generating SQL?
* What are the limitations and capabilities?
* Can you use GPT capabilities as a software engineer?
* Do you know the limits and costs of using GPT?

## Read a Published Paper
* Read this paper! Learn about the three prompting strategies presented - https://arxiv.org/abs/2305.11853
## Build
* Design a database! If you have a hard time coming up with an idea of what to model, maybe try one of these (restaurant, university, hair saloon, system for tracking pianos on campus, vending machines, etc..)
* Build an app that can ask questions of ChatGPT and get answers in the form of SQL queries to your database. Take the results of the queries (if they worked) and get ChatGPT to give a friendly answer using the results from the query on your database. Question -> GPT -> SQL -> Results -> GPT -> Friendly response. It doesn't need to have a GUI or be interactive.
## What you will post in Discord (as a group of 0-5 people)
* Working code files (and DB if using SQLite). Remember :), never share your Open AI API key or OrgID.
* One+ sentence description or purpose of your database
* Picture of Schema
* Sample question, SQL query, response that worked (if you have one)
* Sample question, SQL query, response that did not work (if you have one)
* A file outlining at least 6 other examples.
* Describe somewhere which prompting strategies you tried and if you noticed a difference between them. (Note my post only does two of three - which is fine!).

This assignment is meant to be creative and fun. Feel free to experiment and try new things.

## Review
* Please take a look at other's posts. Please **read**, then react with **a reply** or **emoji** to at least 3 posts of others! Please start by reviewing those posts with less reactions so everyone's projects can be read/reviewed. I'm not asking you to criticize other's work, but please do share feedback or ask questions if something is unclear!

## Each Person
You can work in groups of 0-5 people. However, each person needs to:

* Read the paper: https://arxiv.org/abs/2305.11853
* Create a schema picture
* Contribute to the database design (maybe a table, foreign key, attribute, something!)
* Execute the program with their \*own* API key (or have done this in the past - I just would like to ensure everyone has *used* open ai's API with their own key)
* Experiment with a question that they came up with!
* Self report in Canvas

## Hopefully Helpful Notes
* See the post in the Teams from my (with my source code)
  * I recommend you write your own code, work brings learning that you cannot get in any other way! Feel free to look at my code and Dr Jenkins code as well.
  * [My code](https://github.com/byu-cs-452/byu-cs-452-class-content/tree/main/aisql)
  * [Sample Post](https://github.com/byu-cs-452/byu-cs-452-class-content/blob/main/aisql/sample_post.md) 
  * [Dr Jenkins Fall 2023 project example](https://github.com/porterjenkins/byu-cs452)
* Create a new OpenAI Account or pay the $5. This should be enough to complete the assignment. (Cost me 29 cents in including all my debugging)
* Setup a developer API KEY, find your "ORGID". Learn how to interface with OpenAI. Learn about different models and their costs (GPT 3.5, davinci, GPT 4, etc). Search google to find more information.
* To create a **schema picture using SchemaCrawler** (mysql is prettier) I did this:
```schemacrawler --server sqlite --database .\aidb.sqlite --command=schema --output-file=./schema.png --info-level=standard```
I had to install Java JRE and scoop to install schemacawler.
If you are doing MySQL you can use the MySQL Workbench -> database -> reverse engineer. Actually even if you were doing any language you could modify your create statements and additionally setup a new schema in MySQL Workbench to view the ERD. Other SQL tools give you an ERD for free as well

[Link to Assignment Page](https://byu.instructure.com/courses/26599/quizzes/472950?module_item_id=2199478)
