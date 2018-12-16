require 'airport'

describe Airport do
  subject(:airport) { described_class.new(20) }

  it { is_expected.to respond_to :plane }

  context 'land' do
    it { is_expected.to respond_to :land }

    it 'instructs a plane to land' do
      expect(airport).to respond_to(:land).with(1).argument
    end

    it 'raises an error if plane attempts to land if airport is full ' do
      plane = double :plane
      20.times do
        airport.land(plane)
      end
      expect { airport.land(plane) }.to raise_error "Airport Full"
    end

  end

  context 'take_off' do
    it { is_expected.to respond_to(:take_off).with(1).argument }

    # it 'lets one plane take_off' do
    #   plane = Plane.new
    #   airport.land(plane)
    #   expect(airport.take_off(:plane).to eq plane
    # end
  end
end

# describe Airport do
#   it 'lands one plane' do
#     plane = Plane.new
#     subject.land_plane(plane)
#     expect(subject.land_plane(plane)).to eq plane
#   end
# end
