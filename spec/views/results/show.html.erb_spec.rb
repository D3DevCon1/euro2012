require 'spec_helper'

describe "results/show.html.erb" do
  before(:each) do
    @result = assign(:result, stub_model(Result,
      :score => "Score"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Score/)
  end
end
