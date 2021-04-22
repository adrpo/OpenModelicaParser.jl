[![Github Action CI](https://github.com/adrpo/OpenModelicaParser.jl/workflows/CI/badge.svg)](https://github.com/adrpo/OpenModelicaParser.jl/actions)
# OpenModelicaParser.jl

A parser for the Modelica language in Julia based on the OpenModelica parser.

You will need to fetch the required dlls from:
https://build.openmodelica.org/omc/msys2/OpenModelicaParser.jl/
Either manually  unpack them in lib/ext or build the package to use it.

## Example usage 
```
julia> import OpenModelicaParser

julia> OpenModelicaParser.parseFile("HelloWorld.mo")
PROGRAM(Cons{Class}(CLASS("HelloWorld", false, false, false, R_MODEL(), PARTS(Nil{Any}(), Nil{Any}(), Cons{ClassPart}(PUBLIC(Cons{ElementItem}(ELEMENTITEM(ELEMENT(false, nothing, NOT_INNER_OUTER(), COMPONENTS(ATTR(false, false, NON_PARALLEL(), VAR(), BIDIR(), NONFIELD(), Nil{Any}()), TPATH(IDENT("Real"), nothing), Cons{ComponentItem}(COMPONENTITEM(COMPONENT("x", Nil{Any}(), SOME{Modification}(CLASSMOD(Cons{ElementArg}(MODIFICATION(false, NON_EACH(), IDENT("start"), SOME{Modification}(CLASSMOD(Nil{Any}(), EQMOD(INTEGER(1), SOURCEINFO("HelloWorld.mo", true, 2, 17, 2, 20, 0.0)))), nothing, SOURCEINFO("HelloWorld.mo", true, 2, 11, 2, 20, 0.0)), Cons{ElementArg}(MODIFICATION(false, NON_EACH(), IDENT("fixed"), SOME{Modification}(CLASSMOD(Nil{Any}(), EQMOD(BOOL(true), SOURCEINFO("HelloWorld.mo", true, 2, 28, 2, 35, 0.0)))), nothing, SOURCEINFO("HelloWorld.mo", true, 2, 22, 2, 35, 0.0)), Nil{Any}())), NOMOD()))), nothing, nothing), Nil{Any}())), SOURCEINFO("HelloWorld.mo", true, 2, 3, 2, 36, 0.0), nothing)), Cons{ElementItem}(ELEMENTITEM(ELEMENT(false, nothing, NOT_INNER_OUTER(), COMPONENTS(ATTR(false, false, NON_PARALLEL(), PARAM(), BIDIR(), NONFIELD(), Nil{Any}()), TPATH(IDENT("Real"), nothing), Cons{ComponentItem}(COMPONENTITEM(COMPONENT("a", Nil{Any}(), SOME{Modification}(CLASSMOD(Nil{Any}(), EQMOD(INTEGER(1), SOURCEINFO("HelloWorld.mo", true, 3, 20, 3, 23, 0.0))))), nothing, nothing), Nil{Any}())), SOURCEINFO("HelloWorld.mo", true, 3, 3, 3, 23, 0.0), nothing)), Nil{Any}()))), Cons{ClassPart}(EQUATIONS(Cons{EquationItem}(EQUATIONITEM(EQ_EQUALS(CALL(CREF_IDENT("der", Nil{Any}()), FUNCTIONARGS(Cons{Exp}(CREF(CREF_IDENT("x", Nil{Any}())), Nil{Any}()), Nil{Any}())), UNARY(UMINUS(), BINARY(CREF(CREF_IDENT("a", Nil{Any}())), MUL(), CREF(CREF_IDENT("x", Nil{Any}()))))), nothing, SOURCEINFO("HelloWorld.mo", true, 5, 3, 5, 19, 0.0)), Nil{Any}())), Nil{Any}())), Nil{Any}(), nothing), SOURCEINFO("HelloWorld.mo", true, 1, 1, 6, 15, 0.0)), Nil{Any}()), TOP())
```
