shell.run("rm /programfiles/hexlator/listener.lua")
shell.run("mv /programfiles/hlistener/listener.lua /programfiles/hexlator/listener.lua")
shell.setAlias("listener", "/programfiles/hexlator/listener.lua")
shell.run("bg listener")