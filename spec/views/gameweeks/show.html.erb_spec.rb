require 'spec_helper'

describe "gameweeks/show.html.erb" do
  before(:each) do
    @gameweek = assign(:gameweek, stub_model(Gameweek,
      :number => 1,
      :matches => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
