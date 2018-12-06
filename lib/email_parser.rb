# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'
require 'json'

class EmailParser
  @@emails_all = []
  #PARSED_EMAILS = [ ]
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
    @@emails_all << self
    @@emails_all
    end

    def self.emails_all
      @@emails_all
    end

    def parse
      #binding.pry
      @emails = emails.scan(/\b[^\s,]+\.[a-z]{3}/)
      #PARSED_EMAILS << emails.gsub(/\b[^\s,]+\.[a-z]{3}/)
      #PARSED_EMAILS << emails.gsub(/[,]/,"")
      #emails.to_s.split(',') #this is the instance "avi@test.com, arel@test.com" and I wish I could parse it into ["avi@test.com", "arel@test.com"] two strings in an array
      #
      #parsing operation goes here #first split string into two separate values
      @emails.uniq
    end

end
