using Test
import OpenModelicaParser

@testset "Simple standalone modules" begin

@test begin
  try
    res = OpenModelicaParser.parseFile("HelloWorld.mo")
    true
  catch
    false
  end
end

@test begin
  try
    res = OpenModelicaParser.parseFile("Influenza.mo")
    true
  catch
    false
  end
end
  
@test begin
  try
    res = OpenModelicaParser.parseFile("Casc12800.mo")
    true
  catch
    false
  end
end

end


@testset "Standard Library" begin
  if Sys.iswindows()
    @test begin
      try
        res = OpenModelicaParser.parseFile("msl.mo")
        true
      catch
        false
      end
    end
  else
    @info "MSL is currently only supported on Windows"
  end
end
