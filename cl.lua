ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    end
end)

RegisterNetEvent('lsmecano:habits')
AddEventHandler('lsmecano:habits', function()
    local plyPed = PlayerPedId()

        _TriggerServerEvent('lsmecano:habitrem')

        TriggerEvent('skinchanger:getSkin', function(skin)
            if skin.sex == 0 then
                TriggerEvent('skinchanger:loadClothes', skin, {['bproof_1'] = 22,  ['bproof_2'] = 9,})
            else
                TriggerEvent('skinchanger:loadClothes', skin, {['bproof_1'] = 19,  ['bproof_2'] = 9})
            end
        end)

        ESX.ShowNotification("Tu as utilisé une tenue mecano")
    end
end)
