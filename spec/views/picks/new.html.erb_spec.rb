require 'spec_helper'

describe "picks/new.html.erb" do
  before(:each) do
    assign(:pick, stub_model(Pick,
      :user_id => 1,
      :game1 => 1,
      :game2 => 1,
      :game3 => 1,
      :game4 => 1,
      :game5 => 1,
      :game6 => 1,
      :game7 => 1,
      :game8 => 1,
      :game9 => 1,
      :game10 => 1,
      :game11 => 1,
      :game12 => 1,
      :game13 => 1,
      :game14 => 1,
      :game15 => 1,
      :game16 => 1,
      :game17 => 1,
      :game18 => 1,
      :game19 => 1,
      :game20 => 1,
      :game21 => 1,
      :game22 => 1,
      :game23 => 1,
      :game24 => 1
    ).as_new_record)
  end

  it "renders new pick form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => picks_path, :method => "post" do
      assert_select "input#pick_user_id", :name => "pick[user_id]"
      assert_select "input#pick_game1", :name => "pick[game1]"
      assert_select "input#pick_game2", :name => "pick[game2]"
      assert_select "input#pick_game3", :name => "pick[game3]"
      assert_select "input#pick_game4", :name => "pick[game4]"
      assert_select "input#pick_game5", :name => "pick[game5]"
      assert_select "input#pick_game6", :name => "pick[game6]"
      assert_select "input#pick_game7", :name => "pick[game7]"
      assert_select "input#pick_game8", :name => "pick[game8]"
      assert_select "input#pick_game9", :name => "pick[game9]"
      assert_select "input#pick_game10", :name => "pick[game10]"
      assert_select "input#pick_game11", :name => "pick[game11]"
      assert_select "input#pick_game12", :name => "pick[game12]"
      assert_select "input#pick_game13", :name => "pick[game13]"
      assert_select "input#pick_game14", :name => "pick[game14]"
      assert_select "input#pick_game15", :name => "pick[game15]"
      assert_select "input#pick_game16", :name => "pick[game16]"
      assert_select "input#pick_game17", :name => "pick[game17]"
      assert_select "input#pick_game18", :name => "pick[game18]"
      assert_select "input#pick_game19", :name => "pick[game19]"
      assert_select "input#pick_game20", :name => "pick[game20]"
      assert_select "input#pick_game21", :name => "pick[game21]"
      assert_select "input#pick_game22", :name => "pick[game22]"
      assert_select "input#pick_game23", :name => "pick[game23]"
      assert_select "input#pick_game24", :name => "pick[game24]"
    end
  end
end
