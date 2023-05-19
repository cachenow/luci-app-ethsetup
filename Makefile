include $(TOPDIR)/rules.mk

# Name and version of your application
PKG_NAME:=luci-app-ethsetup
PKG_VERSION:=1.0.0

include $(TOPDIR)/feeds/luci/luci.mk

# Package definition; specify dependencies for your application
define Package/luci-app-ethsetup
  SECTION:=luci
  CATEGORY:=LuCI
  SUBMENU:=3. Applications
  TITLE:=Eth Setup
  DEPENDS:=+your-dependency1 +your-dependency2
endef

define Package/luci-app-ethsetup/description
  Your App - a simple and useful application for OpenWrt
endef

define Build/Compile
endef

define Package/luci-app-yourapp/install
  $(INSTALL_DIR) $(1)/usr/lib/lua/luci/controller
  $(INSTALL_DATA) ./luasrc/controller/ethsetup.lua $(1)/usr/lib/lua/luci/controller

  $(INSTALL_DIR) $(1)/usr/lib/lua/luci/view/ethsetup
  $(INSTALL_DATA) ./luasrc/view/ethsetup/ethsetup.htm $(1)/usr/lib/lua/luci/view/ethsetup
endef

$(eval $(call BuildPackage,luci-app-ethsetup))
