require 'spec_helper'

describe "results/edit.html.erb" do
  before(:each) do
    @result = assign(:result, stub_model(Result,
      :score => "MyString"
    ))
  end

  it "renders the edit result form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => results_path(@result), :method => "post" do
      assert_select "input#result_score", :name => "result[score]"
    end
  end
end
