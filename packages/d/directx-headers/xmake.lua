package("directx-headers")
set_homepage("https://github.com/microsoft/DirectX-Headers")
set_description("Official DirectX headers available under an open source license ")

add_urls("https://github.com/microsoft/DirectX-Headers.git")

on_install(function(package)
	local configs = {}
	import("package.tools.cmake").install(package, configs)
end)

on_test(function(package)
	-- TODO check includes and interfaces
	-- assert(package:has_cfuncs("foo", {includes = "foo.h"})
end)
