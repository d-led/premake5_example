c = dofile 'commons.lua'

-------------
c.my_solution 'premake5_example'

---------
c.cpp_dll( 'my_lib', 'src/cpp' )

---------------
c.cs_executable( 'test', 'src/cs' )
    links 'my_lib'
