local package_name = "say"
local package_version = "1.4.0"
local rockspec_revision = "1"
local github_account_name = "lunarmodules"
local github_repo_name = package_name

package = package_name
version = package_version .. "-" .. rockspec_revision

source = {
  url = "git+https://github.com/"..github_account_name.."/"..github_repo_name..".git"
}

if package_version == "scm" then source.branch = "master" else source.tag = "v" .. package_version end

description = {
  summary = "Lua string hashing/indexing library",
  detailed = [[
    Useful for internationalization.
  ]],
  homepage = "https://lunarmodules.github.io/busted/",
  license = "MIT <http://opensource.org/licenses/MIT>"
}

dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["say.init"] = "src/say/init.lua"
  }
}
