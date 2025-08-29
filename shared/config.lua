Config = {}

Config.Debug = true

Config.Core = "RSG" --- RSG | VORP

Config.Interact = "prompt" --- prompt | murphy_interact | target (WIP)

--- NPC Settings
Config.DistanceSpawn = 30.0
Config.FadeIn = true

---- Blip Settings
Config.Blip = {
    blipName = 'Delivery',           
    blipSprite = 'blip_ambient_delivery', 
    blipScale = 0.2
}

---- Notification Settings
Config.Notify_Client = function(title, text, notitype, duration)
    lib.notify({
        title = title,
        description = text,
        type = notitype,
        duration = duration
    })
end

Config.Notify_Server = function(id, title, text, notitype, duration)
    local src = id 
    TriggerClientEvent('ox_lib:notify', id, {
        title = title,
        description = text,
        type = notitype,
        duration = duration
    })
end

--- Main delivery Config
Config.Reward_Money_Account = "cash"

Config.CancelDelivery_Command = "canceldelivery"
Config.Show_Reward_Money_inMenu = true -- To show reward money inside deliveries menu

-----
--- To enable itemreward chance just add number ex: chance = 10,
--- To disable itemreward chance just make it nil ex: chance = nil,
Config.Deliveries = {
    {
        label = "Valentine Deliveries",
        npcmodel = "MP_U_M_M_TRADER_01",
        npccoords = vector4(-340.5837, 816.3152, 116.9300, 136.7859),
        cartSpawn = vector4(-347.9996, 815.5305, 116.7226, 168.6349),
        deliveries = {
            {
                label = "Blackwater Delivery",
                description = "From Valentine to Blackwater",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = true,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil, 
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(-750.20, -1206.24, 43.33),
            },
            {
                label = "Strawberry Delivery",
                description = "From Valentine to Strawberry",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = false,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(-1792.688, -434.3452, 155.59338),
            },
            {
                label = "Mcfarlands Ranch Delivery",
                description = "From Valentine to Mcfarlands Ranch",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = false,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(-2381.418, -2384.764, 61.069843),
            },
            {
                label = "Tumbleweed Delivery",
                description = "From Valentine to Tumbleweed",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = false,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(-5521.942, -2938.532, -1.995861),
            },
            {
                label = "Annesburg Delivery",
                description = "From Valentine to Annesburg",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = false,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(3017.0349, 1438.4769, 46.421833),
            },
            {
                label = "SaintDenis Delivery",
                description = "From Valentine to SaintDenis",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = false,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(2904.1989, -1169.292, 46.112228),
            },
            {
                label = "Van Horn Delivery",
                description = "From Valentine to Van Horn",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = false,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(2964.2658, 563.59588, 44.368358),
            },
        },
    },
    {
        label = "Blackwater Deliveries",
        npcmodel = "MP_U_M_M_TRADER_01",
        npccoords = vector4(-743.7046, -1218.822, 43.29129, 94.302909),
        cartSpawn = vector4(-757.1296, -1225.244, 43.54446, 0.8211954),
        deliveries = {
            {
                label = "Valentine Delivery",
                description = "From Blackwater to Valentine",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = true,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(-347.9996, 815.5305, 116.7226),
            },
            {
                label = "Strawberry Delivery",
                description = "From Blackwater to Strawberry",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = false,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(-1792.688, -434.3452, 155.59338),
            },
            {
                label = "Mcfarlands Ranch Delivery",
                description = "From Blackwater to Mcfarlands Ranch",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = false,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(-2381.418, -2384.764, 61.069843),
            },
            {
                label = "Tumbleweed Delivery",
                description = "From Blackwater to Tumbleweed",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = false,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(-5521.942, -2938.532, -1.995861),
            },
            {
                label = "Annesburg Delivery",
                description = "From Blackwater to Annesburg",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = false,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(3017.0349, 1438.4769, 46.421833),
            },
            {
                label = "SaintDenis Delivery",
                description = "From Blackwater to SaintDenis",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = false,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(2904.1989, -1169.292, 46.112228),
            },
            {
                label = "Van Horn Delivery",
                description = "From Blackwater to Van Horn",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = false,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(2964.2658, 563.59588, 44.368358),
            },
        },
    },
    {
        label = "Strawberry Deliveries",
        npcmodel = "MP_U_M_M_TRADER_01",
        npccoords = vector4(-1798.899, -425.6275, 156.37739, 352.46316),
        cartSpawn = vector4(-1788.618, -439.5259, 155.18444, 80.844512),
        deliveries = {
            {
                label = "Blackwater Delivery",
                description = "From Strawberry to Blackwater",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = true,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(-350.7503, 788.47381, 116.0307),
            },
            {
                label = "Valentine Delivery",
                description = "From Strawberry to Valentine",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = true,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(-347.9996, 815.5305, 116.7226),
            },
            {
                label = "Mcfarlands Ranch Delivery",
                description = "From Strawberry to Mcfarlands Ranch",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = false,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(-2381.418, -2384.764, 61.069843),
            },
            {
                label = "Tumbleweed Delivery",
                description = "From Strawberry to Tumbleweed",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = false,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(-5521.942, -2938.532, -1.995861),
            },
            {
                label = "Annesburg Delivery",
                description = "From Strawberry to Annesburg",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = false,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(3017.0349, 1438.4769, 46.421833),
            },
            {
                label = "SaintDenis Delivery",
                description = "From Strawberry to SaintDenis",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = false,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(2904.1989, -1169.292, 46.112228),
            },
            {
                label = "Van Horn Delivery",
                description = "From Strawberry to Van Horn",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = false,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(2964.2658, 563.59588, 44.368358),
            },
        },
    },
    {
        label = "Mcfarlands Ranch Deliveries",
        npcmodel = "MP_U_M_M_TRADER_01",
        npccoords = vector4(-2357.585, -2367.583, 62.18066, 168.52516),
        cartSpawn = vector4(-2352.572, -2398.797, 62.061191, 175.71217),
        deliveries = {
            {
                label = "Blackwater Delivery",
                description = "From Mcfarlands Ranch to Blackwater",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = true,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(-350.7503, 788.47381, 116.0307),
            },
            {
                label = "Strawberry Delivery",
                description = "From Mcfarlands Ranch to Strawberry",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = false,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(-1792.688, -434.3452, 155.59338),
            },
            {
                label = "Valentine Delivery",
                description = "From Mcfarlands Ranch to Valentine",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = true,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(-347.9996, 815.5305, 116.7226),
            },
            {
                label = "Tumbleweed Delivery",
                description = "From Mcfarlands Ranch to Tumbleweed",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = false,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(-5521.942, -2938.532, -1.995861),
            },
            {
                label = "Annesburg Delivery",
                description = "From Mcfarlands Ranch to Annesburg",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = false,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(3017.0349, 1438.4769, 46.421833),
            },
            {
                label = "SaintDenis Delivery",
                description = "From Mcfarlands Ranch to SaintDenis",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = false,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(2904.1989, -1169.292, 46.112228),
            },
            {
                label = "Van Horn Delivery",
                description = "From Mcfarlands Ranch to Van Horn",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = false,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(2964.2658, 563.59588, 44.368358),
            },
        },
    },
    {
        label = "Tumbleweed Deliveries",
        npcmodel = "A_M_M_SDDockForeman_01",
        npccoords = vector4(-5529.143, -2932.52, -1.95342, 212.60365),
        cartSpawn = vector4(-5523.004, -2936.102, -2.007142, 255.0812),
        deliveries = {
            {
                label = "Blackwater Delivery",
                description = "From Tumbleweed to Blackwater",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = true,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(-350.7503, 788.47381, 116.0307),
            },
            {
                label = "Strawberry Delivery",
                description = "From Tumbleweed to Strawberry",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = false,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(-1792.688, -434.3452, 155.59338),
            },
            {
                label = "Mcfarlands Ranch Delivery",
                description = "From Tumbleweed to Mcfarlands Ranch",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = false,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(-2381.418, -2384.764, 61.069843),
            },
            {
                label = "Valentine Delivery",
                description = "From Tumbleweed to Valentine",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = true,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(-347.9996, 815.5305, 116.7226),
            },
            {
                label = "Annesburg Delivery",
                description = "From Tumbleweed to Annesburg",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = false,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(3017.0349, 1438.4769, 46.421833),
            },
            {
                label = "SaintDenis Delivery",
                description = "From Tumbleweed to SaintDenis",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = false,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(2904.1989, -1169.292, 46.112228),
            },
            {
                label = "Van Horn Delivery",
                description = "From Tumbleweed to Van Horn",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = false,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(2964.2658, 563.59588, 44.368358),
            },
        },
    },
    {
        label = "Annesburg Deliveries",
        npcmodel = "MP_U_M_M_TRADER_01",
        npccoords = vector4(3022.6753, 1441.2214, 46.9519, 73.7268),
        cartSpawn = vector4(3009.5029, 1450.3727, 46.9537, 73.7677),
        deliveries = {
            {
                label = "Blackwater Delivery",
                description = "From Annesburg to Blackwater",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = true,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(-350.7503, 788.47381, 116.0307),
            },
            {
                label = "Strawberry Delivery",
                description = "From Annesburg to Strawberry",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = false,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(-1792.688, -434.3452, 155.59338),
            },
            {
                label = "Mcfarlands Ranch Delivery",
                description = "From Annesburg to Mcfarlands Ranch",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = false,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(-2381.418, -2384.764, 61.069843),
            },
            {
                label = "Tumbleweed Delivery",
                description = "From Annesburg to Tumbleweed",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = false,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(-5521.942, -2938.532, -1.995861),
            },
            {
                label = "Valentine Delivery",
                description = "From Annesburg to Valentine",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = true,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(-347.9996, 815.5305, 116.7226),
            },
            {
                label = "SaintDenis Delivery",
                description = "From Annesburg to SaintDenis",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = false,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(2904.1989, -1169.292, 46.112228),
            },
            {
                label = "Van Horn Delivery",
                description = "From Annesburg to Van Horn",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = false,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(2964.2658, 563.59588, 44.368358),
            },
        },
    },
    {
        label = "SaintDenis Deliveries",
        npcmodel = "A_M_M_SDDockForeman_01",
        npccoords = vector4(2904.1989, -1169.292, 46.112228, 96.722068),
        cartSpawn = vector4(2898.8957, -1169.942, 46.093143, 100.06992),
        deliveries = {
            {
                label = "Blackwater Delivery",
                description = "From SaintDenis to Blackwater",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = true,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(-350.7503, 788.47381, 116.0307),
            },
            {
                label = "Strawberry Delivery",
                description = "From SaintDenis to Strawberry",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = false,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(-1792.688, -434.3452, 155.59338),
            },
            {
                label = "Mcfarlands Ranch Delivery",
                description = "From SaintDenis to Mcfarlands Ranch",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = false,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(-2381.418, -2384.764, 61.069843),
            },
            {
                label = "Tumbleweed Delivery",
                description = "From SaintDenis to Tumbleweed",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = false,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(-5521.942, -2938.532, -1.995861),
            },
            {
                label = "Annesburg Delivery",
                description = "From SaintDenis to Annesburg",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = false,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(3017.0349, 1438.4769, 46.421833),
            },
            {
                label = "Valentine Delivery",
                description = "From SaintDenis to Valentine",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = true,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil,
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(-347.9996, 815.5305, 116.7226),
            },
            {
                label = "Van Horn Delivery",
                description = "From SaintDenis to Van Horn",
                reward = {
                    priceByDistance = {
                        activation = true,
                        multiplier = 1.0,
                    },
                    priceByConfig = {
                        activation = false,
                        price = 10.0,
                    },
                    itemreward = {
                        activation = false,
                        itemname = "bread",
                        itemamount = math.random(1, 4),
                        chance = nil, 
                    },
                },
                wagonModel = "cart01",
                cargo = "pg_teamster_cart01_breakables",
                light = "pg_teamster_cart01_lightupgrade3",
                deliveryLoc = vector3(2964.2658, 563.59588, 44.368358),
            },
        },
    },


}


