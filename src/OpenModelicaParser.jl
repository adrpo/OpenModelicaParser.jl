module OpenModelicaParser

import Absyn, MetaModelica, ImmutableList
using MetaModelica

#import Settings
INSTALLATION_DIRECTORY_PATH = realpath(realpath(Base.find_package("OpenModelicaParser") * "./../.."))

struct ParseError end

function isDerCref(exp::Absyn.Exp)::Bool
  @match exp begin
    Absyn.CALL(Absyn.CREF_IDENT("der",  nil()), Absyn.FUNCTIONARGS(Absyn.CREF(__) <|  nil(),  nil()))  => true
    _ => false
  end
end

const _libpath = if Sys.iswindows()
  #global ajaj = realpath(Settings.getInstallationDirectoryPath())
  local instDir = INSTALLATION_DIRECTORY_PATH
  @static if VERSION >= v"1.5.1"
    joinpath(instDir, "lib", "ext", "libomparse-julia_v151.dll")
  elseif VERSION >= v"1.4.0"
    joinpath(instDir, "lib", "ext", "libomparse-julia_v140.dll")
  else
    joinpath(instDir, "lib", "ext", "libomparse-julia.dll")
  end
else
  #joinpath(Settings.getInstallationDirectoryPath(), "/lib/ext/libomparse-julia.so")
end

function parseFile(fileName::String, acceptedGram::Int64 = 1)::Absyn.Program
  local res = ccall((:parseFile, _libpath), Any, (String,Int64), fileName, acceptedGram)
  if res == nothing
    throw(ParseError())
  end
  res
end

#p = parseFile("Banan.mo")
#@show p

end
