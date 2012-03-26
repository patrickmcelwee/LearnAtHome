require 'spec_helper'

describe "activities/index" do
  before(:each) do
    assign(:activities, [
      stub_model(Activity,
        :name => "Name",
        :description => "MyText"
      ),
      stub_model(Activity,
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of activities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
