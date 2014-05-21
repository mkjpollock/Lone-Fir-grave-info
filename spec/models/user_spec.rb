require 'spec_helper'

describe User do
  it { should have_many :assignments }
  it { should have_many :roles }
end
