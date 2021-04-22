#= Build script for the OpenModelica parser. Currently it is for windows only. =#
@info "Building OpenModelicaParser A Modelica Parser in Julia"
import ZipFile
using HTTP
#=Extern path=#
PATH_TO_EXT = realpath("$(pwd())/../lib/ext")
#= Download shared libraries =#
HTTP.download("https://build.openmodelica.org/omc/msys2/OpenModelicaParser.jl/OpenModelicaParser-dlls.zip", PATH_TO_EXT)
println(pwd())
cd(PATH_TO_EXT)
println(pwd())
foreach(readdir()) do f
  println("\nObject: ", f)
end
@info "Unzipping archive"
r = ZipFile.Reader("OpenModelicaParser-dlls.zip");
for f in r.files
  @info "Filename: \$(f.name)"
  write(f.name, read(f, String));
end
@info "Unzip done. Closing file descriptor."
close(r)
@info "Done!"

