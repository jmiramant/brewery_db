require 'spec_helper'

describe BreweryDB::Resources::Brewery do
  context '#beers' do
    let(:config) { stub }
    let(:id) { 'KlSsWY' }
    let(:response) { stub(data: nil) }

    subject { described_class.new(config, id: id) }

    context 'without params' do
      it 'returns the beers for a brewery' do
        subject.should_receive(:get).with('brewery/KlSsWY/beers', {}) { response }
        subject.beers
      end
    end

    context 'with params' do
      let(:params) { stub }

      it 'returns the beers for a brewery with params' do
        subject.should_receive(:get).with('brewery/KlSsWY/beers', params) { response }
        subject.beers(params)
      end
    end
  end
end
