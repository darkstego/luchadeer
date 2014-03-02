shared_examples 'a resource' do
  let(:singular) { described_class::SINGULAR }
  let(:plural)   { described_class::PLURAL }
  let(:client) { Luchadeer::Client.new }

  before :each do
    Luchadeer.client = client
  end

  it 'is a Luchadeer::Resource' do
    expect(described_class.new).to be_a Luchadeer::Resource
  end

  describe '.find' do
    it "forwards to the client find method with arguments" do
      expect(client).to receive(singular).with(1, true)
      described_class.find(1, true)
    end

    it "forwards to the client find method with default refresh" do
      expect(client).to receive(singular).with(1, false)
      described_class.find(1)
    end
  end

  describe '.search' do
    let(:query)  { 'chie' }

    it "forwards to the client search method with arguments" do
      expect(client).to receive(plural).with(query, true)
      described_class.search(query, true)
    end

    it "forwards to the client search method with default refresh" do
      expect(client).to receive(plural).with(query, false)
      described_class.search(query)
    end
  end

end
