local queue = {
    ['group_1'] = {
        players = {
            {
                id = 1,
                name = "ViperGT"
            }
        }
    },
    ['group_4'] = {
        players = {
            {
                id = 2,
                name = "BlazeGamer"
            },
            {
                id = 3,
                name = "SpeedRacer"
            },
            {
                id = 4,
                name = "ShadowNinja"
            },
            {
                id = 5,
                name = "PhoenixFire"
            }
        }
    },
    ['group_6'] = {
        players = {
            {
                id = 6,
                name = "ThunderBolt"
            },
            {
                id = 7,
                name = "GhostRider"
            }
        }
    },
    ['group_9'] = {
        players = {
            {
                id = 8,
                name = "NeonSpectre"
            },
            {
                id = 9,
                name = "DriftKing"
            }
        }
    },
    ['group_10'] = {
        players = {
            {
                id = 10,
                name = "MidnightWolf"
            }
        }
    }
}

local teams = {
  	["blue"] = {
		players = {},
  	},
  	["red"] = {
		players = {},
	},
}

local matchTeamSize = 5

for k,v in pairs(queue) do
    local currentTeam = (matchTeamSize - #teams["blue"].players) == 0 and "red" or "blue"
    if (matchTeamSize - #teams[currentTeam].players) >= #v.players then
        for k2,v2 in pairs(v.players) do
            teams[currentTeam].players[#teams[currentTeam].players + 1] = {
                id = v2.id,
                name = v2.name,
                group = k
            }
        end
    end
end