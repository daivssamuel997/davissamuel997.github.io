# U2.W4: Homework Cheater!


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: title, topic, date, thesis_statment, pronoun in array form to the method
# Output: I need to do several things in this problem. I need to correctly pass all of the arguments into the method and utilize them to make up a nice paragraph. I also need to make sure to create an object and follow simple English rules when writing the paragraph.
# Steps: I need to bring in all of the arguments and use the title give to write it out. Then I can use the "topic" to create the object. Then write out the thesis while ensuring that I follow correct rules of English. Return the essay as a string.

# 3. Initial Solution

def essay_writer(title, topic, date, thesis_statement, pronoun)
    if pronoun == "male"
        who = "He"
        whose = "His"
        whom = "Him"
        
        elsif pronoun == "female"
        who = "She"
        whose = "Her"
        whom = "Her"
        
        else
        who = "It"
        whose = "Its"
        whom = "Its"
    end
    
    return who + " was an important person in " + date.to_s + ". " + who + " did a lot. I want to learn more about him. " + thesis_statement + " " +  topic.to_s + "'s contribution is important."
    
end


# 4. Refactored Solution








# 1. DRIVER TESTS GO BELOW THIS LINE

describe 'essay_writer' do
    let(:array_1) {["The First Shogun", "Tokugawa Ieyasu", 1603, "His most important contribution to history is that he founded the Tokugawa period, a peaceful time that lasted over 200 years.", "male"]}
    
    
    it "is defined as a method" do
        defined?(essay_writer).should eq 'method'
    end
    
    it "requires an argument of 5 items" do
        method(:essay_writer).arity.should eq 5
    end
    
    it "returns the correct essay as a string" do
        essay_writer(array_1).should eq "He was an important person in 1603. He did a lot. I want to learn more about him. His most important contribution to history is that he founded the Tokugawa period, a peaceful time that lasted over 200 years. Tokugawa Ieyasu's contribution is important."
    end
    
end
