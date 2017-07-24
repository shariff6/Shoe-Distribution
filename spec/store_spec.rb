require "spec_helper"

describe(Store) do
  it { should have_many(:brands).through(:distributions) }
end
