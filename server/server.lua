math.randomseed(GetGameTimer())

lib.callback.register('stx-wagondeliveries:server:callback:givePlayerReward', function(source, rewardmoney, data2)
    local src = source
    if Config.Core == "RSG" then
        local RSGCore = exports['rsg-core']:GetCoreObject()
        local Player = RSGCore.Functions.GetPlayer(src)
        if Player then
            Player.Functions.AddMoney(Config.Reward_Money_Account, rewardmoney, 'Delivery Wagon Payment')
            TriggerClientEvent("stx-wagondeliveries:client:cancelDelivery", src, false)
            if data2.reward.itemreward.activation then
                if data2.reward.itemreward.chance ~= nil then
                    local chance = math.random(1, 100)
                    if chance >= data2.reward.itemreward.chance then
                        Player.Functions.AddItem(data2.reward.itemreward.itemname, data2.reward.itemreward.itemamount)
                        Config.Notify_Server(src, "Delivery", "You received an item reward : "..data2.reward.itemreward.itemamount.. "x ".. RSGCore.Shared.Items[data2.reward.itemreward.itemname].label)
                    end
                else
                    Player.Functions.AddItem(data2.reward.itemreward.itemname, data2.reward.itemreward.itemamount)
                    Config.Notify_Server(src, "Delivery", "You received an item reward : "..data2.reward.itemreward.itemamount.. "x ".. RSGCore.Shared.Items[data2.reward.itemreward.itemname].label)
                end

            end
            return true
        end

    elseif Config.Core == "VORP" then
        local Core = exports.vorp_core:GetCore()
        local inventory = exports.vorp_inventory
        local User = Core.getUser(src)
        if User then
            local Character = User.getUsedCharacter
            if Config.Reward_Money_Account == "cash" or Config.Reward_Money_Account == "0" or Config.Reward_Money_Account == 0 then
                Character.addCurrency(0, tonumber(rewardmoney))
            end
            TriggerClientEvent("stx-wagondeliveries:client:cancelDelivery", src, false)
            if data2.reward.itemreward.activation then
                local itemData = exports.vorp_inventory:getItemDB(data2.reward.itemreward.itemname)
                if not itemData then
                    Config.Notify_Server(src, "Delivery", "Reward Item does not exist")
                    return
                end
                local itemLabel = itemData.label or itemData.name
                if data2.reward.itemreward.chance ~= nil then
                    local chance = math.random(1, 100)
                    if chance >= data2.reward.itemreward.chance then
                        inventory:addItem(src, data2.reward.itemreward.itemname, data2.reward.itemreward.itemamount)
                        Config.Notify_Server(src, "Delivery", "You received an item reward : "..data2.reward.itemreward.itemamount.. "x ".. itemLabel)
                    end
                else
                    inventory:addItem(src, data2.reward.itemreward.itemname, data2.reward.itemreward.itemamount)
                    Config.Notify_Server(src, "Delivery", "You received an item reward : "..data2.reward.itemreward.itemamount.. "x ".. itemLabel)
                end
            end
            return true
        end
    end
    return nil
end)


