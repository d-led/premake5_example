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

commons.cpp_dll = function(name,source_path)
    project(name)
    kind "SharedLib"
    language "C++"
    -- default config
    commons.defines()

    files(path.join(source_path,'**.cpp'))
    files(path.join(source_path,'**.h'))
end

commons.cs_executable = function(name,source_path)
    project(name)
    kind "ConsoleApp"
    language "C#"
    files(path.join(source_path,'**.cs'))
end

return commons
