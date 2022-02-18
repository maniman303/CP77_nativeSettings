local GameLocale = require('GameLocale')

local Localization = {
    version = '1.0'
}

-- en-us pl-pl es-es fr-fr it-it de-de es-mx kr-kr zh-cn ru-ru pt-br jp-jp zh-tw ar-ar cz-cz hu-hu tr-tr th-th
local menuName = {}
menuName['en-us'] = "Mods"
menuName['pl-pl'] = "Modyfikacje"

local noModsName = {}
noModsName['en-us'] = "No mods using NativeSettings installed!"
noModsName['pl-pl'] = "Brak zainstalowanych modyfikacji wspierających NativeSettings"

function Localization.Initialize()
    GameLocale.Initialize()
end

function Localization.GetMenuName()
    local current = GameLocale.GetInterfaceLanguage()
    if menuName[current] then
        return menuName[current]
    end

    return menuName['en-us']
end

function Localization.GetNoModsName()
    local current = GameLocale.GetInterfaceLanguage()
    if noModsName[current] then
        return noModsName[current]
    end

    return noModsName['en-us']
end

return Localization