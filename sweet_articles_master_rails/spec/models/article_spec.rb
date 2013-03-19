require 'spec_helper'

describe Article do
  it { should belong_to(:category)}
  it { should have_and_belong_to_many(:tags)}
  it { should validate_presence_of(:title)}
  it { should validate_presence_of(:description)}
  it { should validate_presence_of(:url)}
  it { should validate_uniqueness_of(:title)}
end
