package("eabase")
    set_kind("library", { headeronly = true })
    set_homepage("https://github.com/koi-so/EABase")
    set_description(
        "EABase is a small set of header files that define platform-independent data types and platform feature macros."
    )
    set_license("BSD-3-Clause")

    add_urls("https://github.com/koi-so/EABase.git")

    on_install("windows", "linux", "macosx", function(package)
        os.cp("include/Common/EABase", package:installdir("include"))
    end)

    on_test(function(package)
        assert(
            package:has_cxxfuncs(
                "EA_LIMITS_DIGITS_U(int)",
                { configs = { languages = "c++17" }, includes = "EABase/eabase.h" }
            )
        )
    end)
