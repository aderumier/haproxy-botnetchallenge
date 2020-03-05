local OTP  = require 'otp'
local TOTP = require 'totp'
local basexx = require 'basexx'
local rot13 = require 'rot13'

core.register_fetches("botnet_verify_otp", function(txn, cookie, alreadyauth, useragent)
    local cookie = txn:get_var(cookie)
    local alreadyauth = txn:get_var(alreadyauth)
    local useragent = txn:get_var(useragent)
    local clientip =  txn.f:src()

    if alreadyauth ~= nil and alreadyauth == 1 then return true end
    if cookie == nil then return false end

    if useragent ~= nil then useragent = "sdfocOSdfjiojicvisdinvc" end

    local status, cookiedecode = pcall(rot13.decipher,cookie);
    if status == false then return false end

    local randomkey = "dxcKfdojsdfxvcOsdfvc"
    local INTERVAL              = 15;
    local DIGITS                = 10;
    local BASE32_SECRET = basexx.to_base32( clientip..randomkey..useragent )
    local DIGEST                = "SHA1";

    OTP.type = "totp"
    local tdata = OTP.new(BASE32_SECRET, DIGITS, DIGEST, 30)
    local tv1 = TOTP.verify(tdata, cookiedecode, os.time(), 0)
    return tv1
end)
