package("dpp")
set_homepage("https://github.com/brainboxdotcc/DPP")
set_description("C++ Discord API Bot Library - D++ is Lightweight and scalable for small and huge bots!")

add_urls("https://github.com/brainboxdotcc/DPP.git")

on_install(function(package)
	local configs = {}
	import("package.tools.cmake").install(package, configs)
end)

on_test(function(package)
	-- TODO check includes and interfaces
	-- assert(package:has_cfuncs("foo", {includes = "foo.h"})
end)
