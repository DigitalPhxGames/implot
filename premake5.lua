project "ImPlot"
    kind "StaticLib"
    language "C++"
    staticruntime "Off"

    targetdir ("%{wks.location}/Engine/Binaries/ThirdParty")
    objdir ("%{wks.location}/Engine/Intermediate/%{cfg.platform}/%{cfg.buildcfg}/%{prj.name}")

    files
    {
        "implot.h",
        "implot.cpp",
        "implot_internal.h",
        "implot_items.cpp",
        "implot_demo.cpp",
    }

    includedirs
    {
        ".",
        "%{IncludeDir.ImGui}"
    }

    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "On"

    filter "configurations:Development"
        runtime "Release"
        optimize "On"
        symbols "On"

    filter "configurations:Release"
        runtime "Release"
        optimize "On"
