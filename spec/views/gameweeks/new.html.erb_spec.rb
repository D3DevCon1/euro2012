require 'spec_helper'

describe "gameweeks/new.html.erb" do
  before(:each) do
    assign(:gameweek, stub_model(Gameweek,
      :number => 1,
      :matches => 1
    ).as_new_record)
  end

  it "renders new gameweek form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => gameweeks_path, :method => "post" do
      assert_select "input#gameweek_number", :name => "gameweek[number]"
      assert_select "input#gameweek_matches", :name => "gameweek[matches]"
    end
  end
end
