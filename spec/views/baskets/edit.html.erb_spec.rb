require 'spec_helper'

describe "baskets/edit" do
  before(:each) do
    @basket = assign(:basket, stub_model(Basket,
      :name => "MyString",
      :content => "MyText"
    ))
  end

  it "renders the edit basket form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => baskets_path(@basket), :method => "post" do
      assert_select "input#basket_name", :name => "basket[name]"
      assert_select "textarea#basket_content", :name => "basket[content]"
    end
  end
end
