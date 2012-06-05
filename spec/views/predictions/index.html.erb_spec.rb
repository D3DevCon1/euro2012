require 'spec_helper'

describe "predictions/index.html.erb" do
  before(:each) do
    assign(:predictions, [
      stub_model(Prediction),
      stub_model(Prediction)
    ])
  end

  it "renders a list of predictions" do
    render
  end
end
