package("zinc")
set_homepage("https://github.com/koi-so/zinc.git")
set_description("The zinc package")

add_urls("https://github.com/koi-so/zinc")
add_versions("1.0", "05f8af1c45ceb9ed0484f66b34ede02176d9852a")

on_install(function(package)
	print("Installing zinc...")
	local configs = {}
	if package:config("shared") then
		configs.kind = "shared"
	end
	import("package.tools.xmake").install(package, configs)
end)

on_test(function(package)
	-- TODO check includes and interfaces
	-- assert(package:has_cfuncs("foo", {includes = "foo.h"})
end)
