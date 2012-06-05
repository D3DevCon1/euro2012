require 'spec_helper'

describe "predictions/new.html.erb" do
  before(:each) do
    assign(:prediction, stub_model(Prediction).as_new_record)
  end

  it "renders new prediction form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => predictions_path, :method => "post" do
    end
  end
end
