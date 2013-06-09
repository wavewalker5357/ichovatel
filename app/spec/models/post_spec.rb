require 'spec_helper'
 
describe post do
 
  before(:each) do
    @user = Factory(:user)
    @category = Factory(:category)
    @attr = { :title => "some title",
              :description => "some description",
              :category_id => @category.id }
  end
 
  it "should create a new instance given valid attributes" do
    @user.posts.create!(@attr)
  end
 
  describe "associations" do
     
    it "should have a category attribute" do
      @category =  @post.should respond_to(:category)
    end
 
  end
 
  describe "validations" do
 
    before(:each) do
      @attr = { :title => "some title",
                :description => "some description",
                :category_id => @category.id }
    end
 
    it "should build a post" do
      @user.posts.build(@attr).should be_valid
    end
 
    it "should require a category" do
      @user.posts.build(@attr.merge(:category_id => nil)).should_not be_valid
    end
 
  end
 
end