require 'spec_helper'

describe "baskets/show" do
  before(:each) do
    @basket = assign(:basket, stub_model(Basket,
      :name => "Name",
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
  end
end
