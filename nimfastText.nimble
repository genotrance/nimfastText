# Package

version       = "0.1.1"
author        = "genotrance"
description   = "fastText wrapper for Nim"
license       = "MIT"

skipDirs = @["tests"]

# Dependencies

requires "nimgen >= 0.4.0", "nim >= 0.19.0"

import strutils

var
  name = "nimfastText"
  cmd = when defined(Windows): "cmd /c " else: ""

let gccver = staticExec("gcc --version").split("\n")[0].split(" ")[^1]
if gccver < "5.0.0":
  raise newException(Exception, "Install failed, package not supported on gcc < 5.x")

if fileExists(name & ".nimble"):
  mkDir(name)

task setup, "Checkout and generate":
  if gorgeEx(cmd & "nimgen").exitCode != 0:
    withDir(".."):
      exec "nimble install nimgen -y"
  exec cmd & "nimgen " & name & ".cfg"

before install:
  setupTask()

task test, "Run tests":
  exec "nim cpp -r tests/t" & name & ".nim"
