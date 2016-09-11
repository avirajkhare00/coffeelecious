require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  def setup
    @user = User.create(firstName: "Aviraj", lastName: "Khare", email:"avirajkhare00@gmail.com")
    @recipe = @user.recipes.build(name: "Simple cold coffee", summary: "This is cold coffee which could me made in couple of hours.",
                                  directions:"Take coffee sugar milk and ice cubes in a grinder, then grind it for a minute.")
  end
  
  test "user_id must be present" do
    @recipe.user_id = nil
    assert_not @recipe.valid?
  end
  
  test "recipe should be valid" do
    assert @recipe.valid?
  end
  
  test "name must be present" do
    @recipe.name = " "
    assert_not @recipe.valid?
  end
  
  test "name should be more then 3 characters" do
    @recipe.name = "aa"
    assert_not @recipe.valid?
  end
  
  test "name should not more then 20 characters" do
    @recipe.name = "a"*21
    assert_not @recipe.valid?
  end
  
  test "summary should be present" do
    @recipe.summary = " "
    assert_not @recipe.valid?
  end
  
  test "summary should be aleast 30 characters" do
    @recipe.summary = "a"*29
    assert_not @recipe.valid?
  end
  
  test "summary should be less then 250 characters" do
    @recipe.summary = "a"*251
    assert_not @recipe.valid?
  end
  
  test "directions should be present" do
    @recipe.directions = " "
    assert_not @recipe.valid?
  end
  
  test "directions should be atleast 50 characters" do
    @recipe.directions = "a"*49
    assert_not @recipe.valid?
  end
  
  test "directions should not exceed 350 characters" do
    @recipe.directions = "a"*351
    assert_not @recipe.valid?
  end
end