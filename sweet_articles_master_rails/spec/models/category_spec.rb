require 'spec_helper'



describe Category do
  let(:category) { FactoryGirl.create(:category) }
  it { should have_many(:articles)}

  it { should validate_uniqueness_of(:name)}
  it { should validate_presence_of(:name)}

  context '#to_param' do
    it 'should return the name attribute' do
      category.to_param.should eq category.name
    end
  end

end
