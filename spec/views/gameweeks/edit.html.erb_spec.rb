require 'spec_helper'

describe "gameweeks/edit.html.erb" do
  before(:each) do
    @gameweek = assign(:gameweek, stub_model(Gameweek,
      :number => 1,
      :matches => 1
    ))
  end

  it "renders the edit gameweek form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => gameweeks_path(@gameweek), :method => "post" do
      assert_select "input#gameweek_number", :name => "gameweek[number]"
      assert_select "input#gameweek_matches", :name => "gameweek[matches]"
    end
  end
end
