###############################################################################
# Question Two
###############################################################################
# Build a Ruby class called Book.
# Objects of the Book class must have two attributes: title and chapters.
# Objects must have two methods: add_chapter and chapters.
# The add_chapter method adds a chapter by giving it a title.
# The chapters method should display # of chapters and lists all the chapters

class Book
  attr_accessor :title, :chapters
  def initialize
    @title = title
    @chapters = chapters
    @chapternum = []
    def add_chapter(chapter)
      chapter
      @chapternum.push(chapter)
    end
    def chapters
      num = 1
      puts "Your book: #{@title} has #{@chapternum.length} chapters"
      @chapternum.each do |chapter|
        puts "#{num}. #{chapter}"
        num += 1
      end
    end
  end
end

book = Book.new
book.title = "My Awesome Book"
book.add_chapter("My Awesome Chapter 1")
book.add_chapter("My Awesome Chapter 2")
book.chapters

# This should print:
# Your book: My Awesome Book has 2 chapters:
# 1. My Awesome Chapter 1
# 2. My Awesome Chapter 2
