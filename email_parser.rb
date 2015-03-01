# Create a class EmailParser with a parse method that accepts a string of unformatted email addresses as an argument. The parse method should separate the string into an array of unique email addresses (removing any duplicates). The delimiters to support are commas (','), spaces (' ') and semicolons (';'). 
class EmailParser
  def parse(emails)
    arlist = []
    emails = emails.split.each do |email|
      email.sub!(",","")
      email.sub!(" ","")
      email.sub!(";","")
        if arlist.include?(email) == false
          arlist.push(email)
        end
    end
    arlist
  end
end


# Bonus!
# Create a validate method that tests if the email address is potentially valid (not necessarily that it is actually real).