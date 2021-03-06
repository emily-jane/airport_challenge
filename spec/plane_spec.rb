require 'plane'

## Note these are just some guidelines!
## Feel free to write more tests!!

# When we create a new plane, it should be "flying",
# thus planes can not be created in the airport.
#
# When we land a plane at the airport, the plane in question should
# be "landed"
#
# When the plane takes of from the airport, it should be "flying" again
#
# Think about your implementation - does it allow a plane to be "flying" and landed?
# Are you testing that?

describe Plane do

  it 'is flying when created' do
    plane = Plane.new
    expect(plane.status).to eq 'flying'
  end

  it 'can land' do
    expect(subject).to respond_to :landing
  end

  it 'is landed after landing' do
    plane = Plane.new
    plane.landing
    expect(plane.status).to eq 'landed'
  end

  it 'can take off' do
    expect(subject).to respond_to :taking_off
  end

  it 'is flying after take off' do
    plane = Plane.new
    plane.taking_off
    expect(plane.status).to eq 'flying'
  end

end
