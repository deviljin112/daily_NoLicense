ESX               = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

AddEventHandler('esx:playerLoaded', function (source)
    LoadOwnedLicenses(source)
end)

function LoadOwnedLicenses (source)
        TriggerEvent('esx_license:getLicenses', source, function (licenses)
        TriggerClientEvent('NoLicense:loadLicenses', source, licenses)
    end)
end