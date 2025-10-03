-- Author: Chloe
local pprint = require("cc.pretty").pretty_print

peripheral.find("modem", rednet.open)

while true do
    local id, packet = rednet.receive("HTTP")

    local connection = packet.connection
    local method = packet.method
    local path = packet.path
    local body = packet.body
    local arguments = packet.arguments
    local headers = packet.headers

    resp = table.concat({
      [[
      
      <!doctype html>
      <html>
        <body>

            <h1>
                example webserver!
            </h1>
            <ul>
                <li><a href="https://hexxytest.hexxy.media/cc/gatenet">gatenet by </a></li>
                <li>This is random:  ]],math.random(),[[ </li>
                <li>And this is the last item on the list</li>
            </ul>

        </body>
      </html>
      
      
      ]]
    })

    rednet.send(id, {
        connection = packet.connection,
        response = resp,
        status = 404,
        headers = {a = 5}
      }, "HTTP")
end