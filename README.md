# Assignment 2: Ruby Exercises Next Module

You have two days to complete this assignment. Please do it individually, put it on Github and have your buddy TA mark it for you.

## Question 1
Implement the following code in Ruby: Create a module called HelperMethods that include a method called titleize that does the following: it takes in a string and returns the string back after capitalizing each word in that string. For example, if you pass to the method a string "hello world" you should get back "Hello World". The methods should not capitalize the following words: in, the, of, and, or, from. Then write a piece of code to demonstrate the difference between include and extend in using Ruby modules with classes to include methods. Make sure to demonstrate calling the titleize methods with your code.

## Question 2
Build a Ruby class called Book. Objects of the Book class must have two attributes: title and chapters. Objects must have two methods: add_chapter and chapters. The add_chapter method adds a chapter by giving it a title. The chapters method should display the number of chapters and lists all the chapters as in:
```
book = Book.new
book.title = "My Awesome Book"
book.add_chapter("My Awesome Chapter 1")
book.add_chapter("My Awesome Chapter 2")
book.chapters
# This should print:
# Your book: My Awesome Book has 2 chapters:
# 1. My Awesome Chapter 1
# 2. My Awesome Chapter 2
```

## Question 3
Write a Ruby method called: is_prime. The function must take a number n and it should return true or false whether the argument passed (n) is a prime number or not. A prime number is a number that is divisible only by 1 and itself.

## Question 4
Given a ruby Hash that looks like this:
```
var major_cities = {BC: ["Vancouver", "Victoria", "Prince George"], AB: ["Edmonton", "Calgary"]}
```
Write a piece of code that loops through the object and prints the following to the console:
```
BC has 3 main cities: Vancouver, Victoria, Prince George
AB has 2 main cities: Edmonton, Calgary
```
[Stretch]: Make sure that there is an and before the last one:
```
BC has 3 main cities: Vancouver, Victoria and Prince George
AB has 2 main cities: Edmonton and Calgary
```
