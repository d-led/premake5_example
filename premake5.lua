c = dofile 'commons.lua'

c.my_solution 'premake5_example'

c.cpp_dll 'my_lib'
    files {
        'src/cpp/*.cpp'
    }

c.cs_executable 'test'
    files {
        'src/cs/*.cs'
    }

    links {
        'my_lib'
    }