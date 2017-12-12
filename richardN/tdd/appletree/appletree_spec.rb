require_relative 'appletree'
RSpec.describe AppleTree do
    before(:each) do
        @tree = AppleTree.new
    end
    it "Apple Tree should have an age attribute with getter and setter methods" do
        @tree.age = 5
        expect(@tree.age).to eq(5)
    end
    it "Apple Tree should have a height attribute with only a getter method" do
        expect(@tree.height).to eq(1)
        expect{@tree.height = 2}.to raise_error(NoMethodError)
    end
    it "Apple Tree should have an apple count attribute with only a getter method" do
        expect(@tree.apple_count).to eq(0)
        expect{@tree.apple_count = 2}.to raise_error(NoMethodError)
    end
    it "year_gone_by add one year to the age attribute" do
        @tree.year_gone_by
        expect(@tree.age).to eq(1)
    end
    it "year_gone_by Increase the height by 10% of its current height" do
        @tree.year_gone_by
        expect(@tree.height).to eq(1.10)
    end
    context "age less than 4" do
        it "shouldn't grow apples" do
            @tree.year_gone_by
            expect(@tree.apple_count).to eq(0)
        end
    end
    context "age greater than 10" do
        it "shouldn't grow apples" do
            @tree.age = 10
            @tree.year_gone_by
            expect(@tree.apple_count).to eq(0)
        end
    end
    context "age 4-10" do
        it "should grow apples" do
            @tree.age = 3
            @tree.year_gone_by
            expect(@tree.apple_count).to eq(2)
        end
    end
end