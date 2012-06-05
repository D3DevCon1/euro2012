require 'spec_helper'

describe "results/index.html.erb" do
  before(:each) do
    assign(:results, [
      stub_model(Result,
        :score => "Score"
      ),
      stub_model(Result,
        :score => "Score"
      )
    ])
  end

  it "renders a list of results" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Score".to_s, :count => 2
  end
end
