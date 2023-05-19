module("luci.controller.ethsetup", package.seeall)

function index()
    entry({"admin", "services", "ethsetup"}, cbi("ethsetup"), translate("Eth Setup"), 10)
end
