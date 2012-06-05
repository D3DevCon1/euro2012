require 'spec_helper'

describe "predictions/edit.html.erb" do
  before(:each) do
    @prediction = assign(:prediction, stub_model(Prediction))
  end

  it "renders the edit prediction form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => predictions_path(@prediction), :method => "post" do
    end
  end
end
