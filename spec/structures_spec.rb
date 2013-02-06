require "spec_helper"
require "structures"

describe Structures do

  subject { Structures }

  context "linked_list" do
    subject { LinkedList }
    it { should be_kind_of Class }
  end
end
