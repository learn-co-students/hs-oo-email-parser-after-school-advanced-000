# Create a class EmailParser with a parse method that accepts a string of unformatted email addresses as an argument. The parse method should separate the string into an array of unique email addresses (removing any duplicates). The delimiters to support are commas (','), spaces (' ') and semicolons (';'). 
class EmailParser

  def parse(email)
    email.gsub!(/[,;]/, '')
    email_array = email.split(" ")
    email_array.uniq
  end

end


# Bonus!
# Create a validate method that tests if the email address is potentially valid (not necessarily that it is actually real).