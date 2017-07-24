require "spec_helper"

describe(Brand) do
  it { should have_many(:stores).through(:distributions) }
end
