local Root = ".sertexos/"
local DataRoot = ".sertexos/.data/"
local APIRoot = ".sertexos/apis/"

function clear()
        term.clear()
        term.setCursorPos(1,1)
end
 
function Reset()
        clear()
 term.setTextColor(colors.red)
        textutils.slowWrite("SertexOS")
 term.setTextColor(colors.red)
        printTR("By Sertex-Team")
 term.setTextColor(colors.yellow)
        printTM("- Installer -")
        w, h = term.getSize()
        print(string.rep("-", w)) write("\n")
end
 
function printTR( text )
        w, h = term.getSize()
        term.setCursorPos(w - #text, 1)
        write(text)
end
 
function printTM( text )
        local w, h = term.getSize()
        term.setCursorPos((w - #text) / 2, 1)
        write(text)
end
 
function printC( text )
        local x, y = term.getSize()
        term.setCursorPos(( x - string.len(text)) / 2, y / 2)
        write( text )
end
 
-- Interface --
if not term.isColor() then
  print("ERROR!")
  print("Use Advanced Computer!")
  shell.run("shell")
end

if pocket then
  print("This OS is for Advanced Computers!")
  shell.run("shell")
end

if not http then
	print("You need to enable HTTP")
	shell.run("shell")
end

Reset()
term.setTextColor(colors.yellow)
print("Loading...")
sleep(0.5)
fs.makeDir(Root)
fs.makeDir(DataRoot)
fs.makeDir(APIRoot)
print("Downloading Files...")
booter = http.get("https://raw.githubusercontent.com/Sertex-Team/sertexos/master/startup.lua")
license = http.get("https://raw.githubusercontent.com/Sertex-Team/sertexos/master/LICENSE")
home = http.get("https://raw.githubusercontent.com/Sertex-Team/sertexos/master/home.lua")
boot = http.get("https://raw.githubusercontent.com/Sertex-Team/sertexos/master/boot.lua")
start = http.get("https://raw.githubusercontent.com/Sertex-Team/sertexos/master/start.lua")
apps = http.get("https://raw.githubusercontent.com/Sertex-Team/sertexos/master/apps.lua")
options = http.get("https://raw.githubusercontent.com/Sertex-Team/sertexos/master/options.lua")
fileBrowser = http.get("https://raw.githubusercontent.com/Sertex-Team/sertexos/master/fileBrowser.lua")
luaide = http.get("https://raw.githubusercontent.com/Sertex-Team/sertexos/master/luaide.lua")
sertexgps = http.get("https://raw.githubusercontent.com/Sertex-Team/sertexos/master/sertexgps.lua")
pass = http.get("https://raw.githubusercontent.com/Sertex-Team/sertexos/master/pass.lua")
shell = http.get("https://raw.githubusercontent.com/Sertex-Team/sertexos/master/shell.lua")
ver = http.get("https://raw.githubusercontent.com/Sertex-Team/sertexos/master/ver.txt")
info = http.get("https://raw.githubusercontent.com/Sertex-Team/sertexos/master/info.lua")
setup = http.get("https://raw.githubusercontent.com/Sertex-Team/sertexos/master/setup.lua")
sha256 = http.get("https://raw.githubusercontent.com/Sertex-Team/sertexos/master/sha256")
games = http.get("https://raw.githubusercontent.com/Sertex-Team/sertexos/master/games.lua")
sertexosapi = http.get("https://raw.githubusercontent.com/Sertex-Team/sertexos/master/sertexosapi.lua")
sertexapi = http.get("https://raw.githubusercontent.com/Sertex-Team/sertexos/master/sertexapi.lua")
f = fs.open(Root .. "start", "w")
f.write(start.readAll())
f.close()
print("Downloaded .sertexos/start")
f = fs.open(Root .. "LICENSE", "w")
f.write(license.readAll())
f.close()
print("Downloaded .sertexos/LICENSE")
f = fs.open(Root .. "boot", "w")
f.write(boot.readAll())
f.close()
print("Downloaded .sertexos/boot")
f = fs.open(Root .. "home", "w")
f.write(home.readAll())
f.close()
print("Downloaded .sertexos/home")
f = fs.open(Root .. "apps", "w")
f.write(apps.readAll())
f.close()
print("Downloaded .sertexos/apps")
f = fs.open(Root .. "options", "w")
f.write(options.readAll())
f.close()
print("Downloaded .sertexos/options")
f = fs.open(Root .. "fileBrowser", "w")
f.write(fileBrowser.readAll())
f.close()
print("Downloaded .sertexos/fileBrowser")
f = fs.open(Root .. "luaide", "w")
f.write(luaide.readAll())
f.close()
print("Downloaded .sertexos/luaide")
f = fs.open(Root .. "sertexgps", "w")
f.write(sertexgps.readAll())
f.close()
print("Downloaded .sertexos/sertexgps")
f = fs.open(Root .. "pass", "w")
f.write(pass.readAll())
f.close()
print("Downloaded .sertexos/pass")
f = fs.open(Root .. "setup", "w")
f.write(setup.readAll())
f.close()
print("Downloaded .sertexos/setup")
f = fs.open(Root .. "shell", "w")
f.write(shell.readAll())
f.close()
print("Downloaded .sertexos/shell (WIP)")
f = fs.open(Root .. "ver", "w")
f.write(ver.readAll())
f.close()
print("Downloaded .sertexos/ver")
f = fs.open(Root .. "info", "w")
f.write(info.readAll())
f.close()
print("Downloaded .sertexos/info")
f = fs.open(Root .. "sha256", "w")
f.write(sha256.readAll())
f.close()
print("Downloaded .sertexos/sha256")
f = fs.open(Root .. "games", "w")
f.write(games.readAll())
f.close()
print("Downloaded .sertexos/games")
f = fs.open(APIRoot .. "sertexosapi", "w")
f.write(sertexosapi.readAll())
f.close()
print("Downloaded .sertexos/apis/sertexosapi")
f = fs.open(APIRoot .. "sertexapi", "w")
f.write(sertexapi.readAll())
f.close()
print("Downloaded .sertexos/apis/sertexapi")
---------------------------------N
if fs.exists("startup") then
	fs.move("startup", ".sertexos/startup")
end
s = fs.open("startup", "w")
s.write(booter.readAll())
s.close()
---------------------------------N
term.setTextColor(colors.lime)
print("\nDone!")
os.sleep(1)
Reset()
print("SertexOS Downloaded Successfully!")
term.setTextColor(colors.yellow)
print("\nPress Any Key")
term.setTextColor(colors.white)
os.pullEvent("key")
sleep(0,1)
term.clear()
term.setCursorPos(1,1)
os.reboot()
