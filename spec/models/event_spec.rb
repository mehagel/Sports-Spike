require 'spec_helper'

describe Event do

  it { should have_many(:spikes) }
end
