local addon = LibStub("AceAddon-3.0"):NewAddon("CurrenciesMulti", "LibNotify-1.0")

local versions = {
   {
     title = "Titan [Currencies] Multi 5.14",
     message = "<br/>* New feature<br/>This changelog using LibNotify. :)<br/>"
   },
   {
     title = "Titan [Currencies] Multi 5.13",
     message = "<br/>* New pluging: Brawler's Gold!<br/>Now you can track your Brawler's Guild profit.<br/><br/>* Valor<br/>Denominated as a Draenor plugin (was PvE)."
   }
}

function addon:OnInitialize()
  	MYDB = MYDB or {}
  	MYDB.seen_versions = seen_versions or {}

	addon:SetNotifyIcon("Interface\\Icons\\inv_misc_coin_17")
	addon:SetNotifyStorage(MYDB.seen_versions)
	addon:NotifyOnce(versions)
end