require 'spec_helper'

describe Luchadeer::API::Characters do

  it_behaves_like 'resources' do
    let(:name)  { :character }
    let(:klass) { Luchadeer::Character }
  end

end
