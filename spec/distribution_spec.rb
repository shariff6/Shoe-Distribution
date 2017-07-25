require "spec_helper"

describe(Distribution) do
  it { should belong_to(:brand) }
  it { should belong_to(:store) }

end
