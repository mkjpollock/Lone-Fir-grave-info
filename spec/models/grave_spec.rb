require 'spec_helper'

describe Grave do
  it { should belong_to :user }
  it { should have_and_belong_to_many :base_materials }
  it { should have_and_belong_to_many :directions }
  it { should have_and_belong_to_many :epitaphs }
  it { should have_many :famnames }
  it { should have_and_belong_to_many :marker_conditions }
  it { should have_and_belong_to_many :marker_materials }
  it { should have_and_belong_to_many :marker_types }
end
