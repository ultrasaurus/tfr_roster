require "spec_helper"

describe Person do

  it 'should save a valid record with first_name and last name' do
    p = Person.new(:first_name => "Eve", :last_name => "Smith")
    p.save
    p.should be_valid
  end

  it 'should not save a record with only first name' do
    p = Person.new(:first_name => "Eve")
    p.save
    p.should_not be_valid
    p.errors[:last_name].should include("can't be blank")
  end

  it 'should not save a record with only last name' do
    p = Person.new(:last_name => "Smith")
    p.save
    p.should_not be_valid
    p.errors[:first_name].should include("can't be blank")
  end

end

