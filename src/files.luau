--!strict
local fs = require("@lune/fs")

local function getSubfiles(dir: string)
    dir = string.gsub(dir, "%s+", "")
    if string.sub(dir, #dir, #dir) ~= "/" then
        dir = `{dir}/`
    end

    local files = {}
    for _, entry in fs.readDir(dir) do
        local entryPath = `{dir}{entry}`
        if fs.isFile(entryPath) then
            table.insert(files, entryPath)
        else
            for _, file in getSubfiles(entryPath) do
                table.insert(files, file)
            end
        end
    end

    return files
end

local function removeExtension(str: string)
    return string.match(str, "^(.-)%.%w+$")
end

return {
    getSubfiles = getSubfiles,
    removeExtension = removeExtension
}
