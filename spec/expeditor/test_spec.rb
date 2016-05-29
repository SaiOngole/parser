require 'spec_helper'
require 'parser/test'

describe Test do
  
  it 'should test the tests' do
    expect(Test).to receive(:add)
    Test.add
  end  

end