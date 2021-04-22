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

end


@testset "Standard Library" begin

@test begin
  try
    res = OpenModelicaParser.parseFile("msl.mo")
    true
  catch
    false
  end
end
end
