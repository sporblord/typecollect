--!strict

export type PlayerData = {
    coins: number,
    inventory: { }
}

export type PlayerProfile = {
    player: Player,
    data: PlayerData
}

local function hello()
    print("yo")
end

return {}
