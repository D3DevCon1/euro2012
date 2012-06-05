require 'spec_helper'

describe "predictions/show.html.erb" do
  before(:each) do
    @prediction = assign(:prediction, stub_model(Prediction))
  end

  it "renders attributes in <p>" do
    render
  end
end
