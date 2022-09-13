package("zinc")
set_homepage("https://github.com/koi-so/zinc")
set_description("The zinc package")

add_urls("https://github.com/koi-so/zinc.git")

on_install(function(package)
	local configs = {}
	if package:config("shared") then
		configs.kind = "shared"
	end
	os.cp("include", package:installdir())
	import("package.tools.xmake").install(package, configs)
end)

on_test(function(package)
	-- TODO check includes and interfaces
	-- assert(package:has_cfuncs("foo", {includes = "foo.h"})
end)
