require 'spec_helper'

describe "gameweeks/index.html.erb" do
  before(:each) do
    assign(:gameweeks, [
      stub_model(Gameweek,
        :number => 1,
        :matches => 1
      ),
      stub_model(Gameweek,
        :number => 1,
        :matches => 1
      )
    ])
  end

  it "renders a list of gameweeks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
