<<<<<<< HEAD
require 'spec_helper'
=======
require 'spec_helper' 
>>>>>>> 00d638a28b3a3df60fe72e9612c45b89ad4e5288

describe "EmailParser" do
  describe '#parser' do
    let(:parser) {EmailParser.new}
<<<<<<< HEAD

    it 'is able to instantiate a new email parser' do
      begin
        expect(parser).to be_a EmailParser
      rescue
=======
    
    it 'is able to instantiate a new email parser' do
      begin
        expect(parser).to be_a EmailParser
      rescue 
>>>>>>> 00d638a28b3a3df60fe72e9612c45b89ad4e5288
        abort "You need to create an EmailParser class"
      end
    end

    it "parses comma separated emails" do
      emails = "avi@test.com, bob@test.com test@avi.com, test@bob.com"
<<<<<<< HEAD
      expect(parser.parse(emails)).to eq ["avi@test.com", "bob@test.com", "test@avi.com", "test@bob.com"] 
    end

=======
      expect(parser.parse(emails)).to eq ["avi@test.com", "bob@test.com","test@avi.com", "test@bob.com"] 
    end
    
>>>>>>> 00d638a28b3a3df60fe72e9612c45b89ad4e5288
    it "parses space delimited emails" do
      emails = "avi@test.com bob@test.com"
      expect(parser.parse(emails)).to eq ["avi@test.com", "bob@test.com"]
    end

    it "parses ; separated emails" do
      emails = "avi@test.com; bob@test.com test@avi.com; test@bob.com"
<<<<<<< HEAD
      expect(parser.parse(emails)).to eq ["avi@test.com", "bob@test.com", "test@avi.com", "test@bob.com"]
=======
      expect(parser.parse(emails)).to eq ["avi@test.com", "bob@test.com","test@avi.com", "test@bob.com"] 
>>>>>>> 00d638a28b3a3df60fe72e9612c45b89ad4e5288
    end

    it 'removes duplicate emails' do
      emails = "avi@test.com, avi@test.com"
      expect(parser.parse(emails)).to eq ["avi@test.com"]
    end
  end
end
