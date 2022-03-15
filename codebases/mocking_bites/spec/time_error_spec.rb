require 'time_error'

RSpec.describe TimeError do
  it "returns difference in time between server and local time" do
    server = double :server
    expect(server).to receive(:get).with(URI("https://worldtimeapi.org/api/ip"))
    .and_return('{"abbreviation":"GMT","client_ip":"2a02:c7e:f4e:eb00:f42c:f84d:2218:22ec","datetime":"2022-03-15T14:17:40.744893+00:00","day_of_week":2,"day_of_year":74,"dst":false,"dst_from":null,"dst_offset":0,"dst_until":null,"raw_offset":0,"timezone":"Europe/London","unixtime":1647353860,"utc_datetime":"2022-03-15T14:17:40.744893+00:00","utc_offset":"+00:00","week_number":11}')
    time = Time.new(2022, 3, 15, 14, 17, 40)
    time_error = TimeError.new(server)
    expect(time_error.error(time)).to eq 0.744893
  end
end

