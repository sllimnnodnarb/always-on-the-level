module Rack
  class Attack
    BANNED_IPS = Set.new ['69.167.161.116', '66.249.65.122', '100.76.15.31']
    blocklist('banned_ip') do |req|
      BANNED_IPS.include?(req.ip) && ! req.get?
    end
  end
end if Rails.env.production?
