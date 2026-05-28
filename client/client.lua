local isDeliveryStarted = false
local isWagonDelivered = false
local wagonSpawned = false
local wagonmodel = nil
local endcoords = nil
local tempdata2 = nil
local tempamount = nil
local currentDeliveryId = 0

function DrawText3D(x, y, z, text)
    local onScreen,_x,_y=GetScreenCoordFromWorldCoord(x, y, z)
    SetTextScale(0.35, 0.35)
    SetTextFontForCurrentCommand(9)
    SetTextColor(255, 255, 255, 215)
    local str = CreateVarString(10, "LITERAL_STRING", text, Citizen.ResultAsLong())
    SetTextCentre(1)
    DisplayText(str,_x,_y)
end

--- Function that returns job reward
local function calculateMoney(data1, data2)
    if data2.reward.priceByDistance.activation then
        local cartvec = vector3(data1.cartSpawn.x, data1.cartSpawn.y, data1.cartSpawn.z)
        local endvec = vector3(data2.deliveryLoc.x, data2.deliveryLoc.y, data2.deliveryLoc.z)
        local distance = #(cartvec - endvec)
        return ((math.floor(distance) / 100) * data2.reward.priceByDistance.multiplier)
    elseif data2.reward.priceByConfig.activation then
        return data2.reward.priceByConfig.price
    end 
    return nil
end

---- Main Cart Spawn Function
local function spawn_cart_with_gps_mission(data1, data2)
    local cartHash = joaat(data2.wagonModel)
    local cargoHash = joaat(data2.cargo)
    local lightHash = joaat(data2.light)
    local cartcoords, cartheading = vector3(data1.cartSpawn.x, data1.cartSpawn.y, data1.cartSpawn.z) , data1.cartSpawn.w,
    RequestModel(cartHash, cargoHash, lightHash)
    while not HasModelLoaded(cartHash, cargoHash, lightHash) do
        RequestModel(cartHash, cargoHash, lightHash)
        Wait(0)
    end
    --- Cart Spawn Handling With Cargo and Light
    local cart = CreateVehicle(cartHash, cartcoords, cartheading, true, false)
    SetVehicleOnGroundProperly(cart)
    Wait(200)
    SetModelAsNoLongerNeeded(cartHash)
    Citizen.InvokeNative(0xD80FAF919A2E56EA, cart, cargoHash)
    Citizen.InvokeNative(0xC0F0417A90402742, cart, lightHash)
    --------------------------------------------------------------------------
    wagonmodel = cart
    wagonSpawned = true
    isDeliveryStarted = true
    endcoords = vector3(data2.deliveryLoc.x, data2.deliveryLoc.y, data2.deliveryLoc.z)
    --- GPS Natives 
    StartGpsMultiRoute(GetHashKey("COLOR_RED"), true, true)
    AddPointToGpsMultiRoute(endcoords)
    SetGpsMultiRouteRender(true)
    return true
end




RegisterNetEvent("stx-wagondeliveries:client:open_delivery_menu", function(deliverydata)
    local menuDisabled =  not isWagonDelivered

    lib.registerContext({
        id = 'stx_wagonDeliveries_main_Menu',
        title = deliverydata.label,
        options = {
            {
                title = "Deliver Cart",
                description = "Deliver the cart that is parked at the given destination",
                disabled = menuDisabled,
                onSelect = function()
                    local isDelivered = lib.callback.await('stx-wagondeliveries:server:callback:givePlayerReward', source, tempamount, tempdata2)
                    if isDelivered then

                    end
                end
            },
            {
                title = "Deliveries",
                description = "Check what this person has to offer.",
                onSelect = function()
                    local menus = {}
                    for k, v in pairs (deliverydata.deliveries) do
                        local description = v.description
                        if Config.Show_Reward_Money_inMenu then
                            local rewardMoney = calculateMoney(deliverydata, v)
                            if rewardMoney then
                                description  = description .. " | Reward: $" .. string.format("%.2f", rewardMoney)
                            end
                        end
                        menus[#menus + 1] = {
                            title = v.label,
                            description = description,
                            onSelect = function()
                                if not isDeliveryStarted then
                                    TriggerEvent("stx-wagondeliveries:client:startDelivery", deliverydata, v)
                                else

                                end
                            end,
                        }
                    end
                    lib.registerContext({
                        id = 'stx_wagonDeliveries_Delivery_Menu',
                        title = deliverydata.label,
                        options = menus,
                    })
                    lib.showContext('stx_wagonDeliveries_Delivery_Menu')
                end,
            }
        },
    })
    lib.showContext('stx_wagonDeliveries_main_Menu')

end)


RegisterNetEvent("stx-wagondeliveries:client:startDelivery", function(MainLocationData, MainLocationDeliveryData)
    local getRewardMoney = calculateMoney(MainLocationData, MainLocationDeliveryData)

    if spawn_cart_with_gps_mission(MainLocationData, MainLocationDeliveryData) then
        Config.Notify_Client("Delivery", "Deliver the cart to the destination", "info", 5000)
        local noted = false
        currentDeliveryId = currentDeliveryId + 1
        local myDeliveryId = currentDeliveryId
        CreateThread(function()
            while myDeliveryId == currentDeliveryId do
                if wagonSpawned == true then
                    local vehpos = GetEntityCoords(wagonmodel, true)
                    if #(vehpos - endcoords) < 250.0 then
                        sleep = 0
                        DrawText3D(endcoords.x, endcoords.y, endcoords.z + 0.98, "DELIVERY POINT")
                        if #(vehpos - endcoords) < 3.0 then
                            isWagonDelivered = true
                            if not noted then
                                Config.Notify_Client("Delivery", "Cart delivered. Go talk to the person to receive reward", "success", 5000)
                                noted = true
                                tempdata2 = MainLocationDeliveryData
                                tempamount = getRewardMoney
                            end
                        end
                    end
                end
                Wait(sleep)
            end
        end)
    end

end)


RegisterNetEvent("stx-wagondeliveries:client:cancelDelivery", function(check)
    if check then
        if wagonSpawned and isDeliveryStarted then
            currentDeliveryId = currentDeliveryId + 1
            ClearGpsMultiRoute(endcoords)
            endcoords = nil
            DeleteVehicle(wagonmodel)
            wagonSpawned = false
            isDeliveryStarted = false
            isWagonDelivered = false
            tempdata2 = nil
            tempamount = nil
            Config.Notify_Client("Delivery", "Mission Cancelled", "error", 5000)
        else
            Config.Notify_Client("Delivery", "Either Cart isn't spawned or Mission isn't started.", "error", 5000)
        end
    else
        if wagonSpawned and isDeliveryStarted and isWagonDelivered then
            Config.Notify_Client("Delivery", "Cart Delivered...", "success", 5000)
            ClearGpsMultiRoute(endcoords)
            endcoords = nil
            DeleteVehicle(wagonmodel)
            wagonSpawned = false
            isDeliveryStarted = false
            isWagonDelivered = false
            tempdata2 = nil
            tempamount = nil
        else
            Config.Notify_Client("Delivery", "Cart isn't delivered....", "error", 5000)
        end

    end

end)


--- Command
RegisterCommand(Config.CancelDelivery_Command, function()
    TriggerEvent("stx-wagondeliveries:client:cancelDelivery", true)
end)
