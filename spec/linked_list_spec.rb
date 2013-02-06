require "spec_helper"

describe LinkedList do

  context "simple workflow" do
    let(:list) { LinkedList.new }
    subject { list }

    it { should respond_to :add, :remove_at, :at, :current, :each }

    its(:current) { should be_nil }

    context "can add" do
      let(:item) { 1 }
      let(:second_item) { "22" }
      let(:last_item) { "333"}

      before do
        list.add item
        list.add second_item
        list.add last_item
      end

      it "can #each" do
        j_count = 0
        list.each { |a| j_count += a.to_s.size; }
        j_count.should eq 6
      end

      it { list.at(0).should eq item }
      it { list.at(1).should eq second_item }

      its(:size) { should eq 3 }
    end
  end

end
