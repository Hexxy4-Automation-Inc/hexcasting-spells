local focalPort = peripheral.find("focal_port")

local function readFocalPort()
    return focalPort.readIota()
end

local function hash(str)
    return textutils.serialise(str)
end

local function hexget(path)
    local url = path

    package.loaded["github"] = nil
    local github = require("github")
    spell_url = github.convert_url(url)
    local res = github.api_response(spell_url).content
    if not res then
        print("Error")
        return
    end

    package.loaded["hexlator"] = nil
    local hexlator = require("hexlator")
    local debug = false
    local stripped = false
    local verbose = false
    local compiled = hexlator.compile(res, stripped, verbose, debug)

    hexlator.writeToFocus(compiled)
end


local previous_value = hash(readFocalPort())


while true do
    local val = readFocalPort()
    if previous_value ~= hash(val) then
        previous_value = hash(val)
        if val[1] == "hexget" then
            print("Processing request: " .. val[2])
            hexget(val[2])
            print("Completed")
        end
    end
    sleep(0.1)
end