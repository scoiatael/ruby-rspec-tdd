require 'spec_helper'

describe 'RSpecGreeter' do
  context 'RSpecGreeter#greet()' do
    subject(:greeter) { RSpecGreeter.new.greet }  # Given
    it { is_expected.to match(proper_greeting) }   # Then
  end
end
