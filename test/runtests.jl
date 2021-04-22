using Test
import OpenModelicaParser

@test begin
  try
    res = OpenModelicaParser.parseFile("HelloWorld.mo")
    true
  catch
    false
  end
end
