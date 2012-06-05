require 'spec_helper'

describe "selections/index.html.erb" do
  before(:each) do
    assign(:selections, [
      stub_model(Selection,
        :userid => 1,
        :gameweek => 1
      ),
      stub_model(Selection,
        :userid => 1,
        :gameweek => 1
      )
    ])
  end

  it "renders a list of selections" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
