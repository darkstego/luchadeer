require 'spec_helper'

describe Luchadeer::API::Videos do

  it_behaves_like 'resources' do
    let(:name)  { :video }
    let(:klass) { Luchadeer::Video }
  end

end
