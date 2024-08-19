-- code by [alexis.isback00]
local ptllPart = Instance.new("Part")

local function findPtllReferenceTable()
    for _, item in pairs(getreg()) do
        if type(item) == "table" and #item then
            if rawget(item, "__mode") == "kvs" then
                for _, value in pairs(item) do
                    if value == ptllPart then
                        getgenv().PtllReferenceList = item
                        return
                    end
                end
            end
        end
    end
end

findPtllReferenceTable()

local ptllFunctions = {}

function ptllFunctions.removeReference(reference)
    if not getgenv().PtllReferenceList then return end
    for index, value in pairs(getgenv().PtllReferenceList) do
        if value == reference then
            getgenv().PtllReferenceList[index] = nil
            return reference
        end
    end
end

if not cloneref then
    getgenv().cloneref = ptllFunctions.removeReference
end

function ptllFunctions.isInReferenceList(object)
    if not getgenv().PtllReferenceList then return false end
    for _, value in pairs(getgenv().PtllReferenceList) do
        if value == object then
            return true
        end
    end
    return false
end

function ptllFunctions.clearReferenceList()
    if getgenv().PtllReferenceList then
        for index in pairs(getgenv().PtllReferenceList) do
            getgenv().PtllReferenceList[index] = nil
        end
        getgenv().PtllReferenceList = nil
    end
end
