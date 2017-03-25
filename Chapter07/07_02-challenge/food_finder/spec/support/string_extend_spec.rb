describe 'String' do

  describe "#titleize" do

    it "capitalizes each word in a string" do 
      expect("hello world".titleize).to eq("Hello World")
    end

    it "works with single-word strings" do 
      expect("hello".titleize).to eq("Hello")
    end
    
    it "capitalizes all uppercase strings" do 
      expect("HELLO WORLD".titleize).to eq("Hello World")
    end
    
    it "capitalizes mixed-case strings" do 
      expect("HeLLo WOrLd".titleize).to eq("Hello World")
    end
    
  end
  
  describe '#blank?' do

    it "returns true if string is empty" do 
      expect("".blank?).to be(true)
    end

    it "returns true if string contains only spaces" do
      expect("   ".blank?).to be(true)
    end

    it "returns true if string contains only tabs" do 
    # Get a tab using a double-quoted string with \t
    # example: "\t\t\t"
      expect("    ".blank?).to be(true)
    end

    it "returns true if string contains only spaces and tabs" do 
      expect("      ".blank?).to be(true)
    end
    
    it "returns false if string contains a letter" do 
      expect("b".blank?).to be(false)
    end

    it "returns false if string contains a number" do 
      expect("3   ".blank?).to be(false)
    end
    
  end
  
end
