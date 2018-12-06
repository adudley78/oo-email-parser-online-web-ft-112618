# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailParser
  @@emails_all = [ ]
  PARSED_EMAILS = [ ]
  attr_accessor :emails

    def self.emails_all
      @@emails_all
    end

    def save
      self.class.emails_all << self
    end

    def self.new_by_string(emails)
      email = self.new
      email.emails = email
      email
    end

    def self.new_from_csv#(emails)
      email_string = emails.gsub(" ").split(",")
      email = self.new_by_string(email_string)
      email.email_string = email_string
      PARSED_EMAILS << email
    end
  # def initialize(emails)
  #   @emails = emails
  #   @@emails_all << self
  #   @@emails_all
  # end
  #
  # # def self.emails_all
  # #   @@emails_all
  # # end
  #
    def parse
  #   binding.pry
  #emails_data = emails.gsub("").split(",", " ")
      PARSED_EMAILS
    end

  # attr_accessor #:email
  # @@emails_all = [ ]
  #
  # def self.new_from_csv(csv)
  #   e = self.new
  #   e.email = csv[:email]
  #   e
  # end
  # def self.parse#(csv_data)
  #   #rows = csv_data.split("\n")
  #   emails = csv_data.collect do |row|
  #     data = row.split(", ", " ")
  #     email = data[0]
  #     email_parser = self.new
  #     email_parser.email = email
  #     email_parser
  #   end
  #     email_parser
  # end
end
