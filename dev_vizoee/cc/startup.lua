shell.run("rm /programfiles/hexlator/listener.lua")
shell.run("cp /programfiles/hlistener/listener.lua /programfiles/hexlator/listener.lua")
shell.setAlias("listener", "/programfiles/hexlator/listener.lua")
shell.run("bg listener")