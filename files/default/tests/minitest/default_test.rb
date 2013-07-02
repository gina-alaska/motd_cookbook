require File.expand_path('../support/helpers', __FILE__)

describe 'motd::default' do

  include Helpers::Motd

  # Example spec tests can be found at http://git.io/Fahwsw
  it 'creates motd.d' do
    directory("/etc/motd.d").must_exist.with(:mode, 0755)
  end

  it 'populates motd with the contents of /etc/motd.d' do
    file('/etc/motd').must_exist.must_include(motd_d)
  end

end
