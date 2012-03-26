require 'spec_helper'

describe Basket do
  it { should have_and_belong_to_many(:activities) }
end
