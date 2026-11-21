--- Рекурсивно обходит дерево виджетов
--- @param widget userdata виджет для обхода
--- @param indent string|nil текущий уровень отступа
--- @return string строка с описанием структуры виджетов
local function buildWidgetTree( widget, indent )
    if not widget then
        return ""
    end
    
    indent = indent or "    "
    local tab = "    "
    local result = ""
    
    local name = widget:GetName()
    local debugInfo = widget:GetDebugInfo()
    
    local widgetType = "unknown"
    if debugInfo then
        local typeMatch = debugInfo:match( "%[%d+%]%[([%w_]+)%]" )
        if typeMatch then
            widgetType = typeMatch
        end
    end
    
    result = result .. indent .. name .. " (" .. widgetType .. ")"
    
    local children = widget:GetNamedChildren()
    
    if children and #children > 0 then
        result = result .. " = {\n"
        
        for _, child in ipairs( children ) do
            local childResult = buildWidgetTree( child, indent .. tab )
            if childResult ~= "" then
                result = result .. childResult .. ",\n"
            end
        end
        
        result = result .. indent .. "}"
    else
        result = result
    end
    
    return result
end

--- Функция для построения дерева виджетов начиная с mainForm
--- @param rootName string имя mainForm виджета для common.GetAddonMainForm( rootName )
function widgetTree( rootName )
    local rootWidget = common.GetAddonMainForm( rootName )
    
    if not rootWidget then
        return "Виджет '" .. rootName .. "' не найден"
    end
    
    local treeString = "common.GetAddonMainForm = {\n"
    treeString = treeString .. buildWidgetTree( rootWidget )
    treeString = treeString .. "\n}"
    
    common.LogInfo( "", treeString )
end