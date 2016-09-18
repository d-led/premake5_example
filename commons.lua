local commons = {}

commons.defines = function()
    defines {
        'MY_VERSION=42'
    }
end

commons.my_solution = function(name)
    workspace(name)

    configurations { "Release" }

    filter "configurations:Release"
        architecture "x86_64"
        defines { "NDEBUG" }
        flags { "Symbols" }
        optimize "On"
    filter {}
end

commons.cpp_dll = function(name)
    project(name)
    kind "SharedLib"
    language "C++"
    -- default config
    commons.defines()
end

commons.cs_executable = function(name)
    project(name)
    kind "ConsoleApp"
    language "C#"
end

return commons
