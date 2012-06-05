require 'spec_helper'

describe "selections/edit.html.erb" do
  before(:each) do
    @selection = assign(:selection, stub_model(Selection,
      :userid => 1,
      :gameweek => 1
    ))
  end

  it "renders the edit selection form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => selections_path(@selection), :method => "post" do
      assert_select "input#selection_userid", :name => "selection[userid]"
      assert_select "input#selection_gameweek", :name => "selection[gameweek]"
    end
  end
end
