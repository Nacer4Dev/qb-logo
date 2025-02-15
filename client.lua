-- دالة لعرض الشعار
function ShowLogo()
    -- إرسال رسالة إلى واجهة المستخدم لعرض الشعار
    SendNUIMessage({
        type = "showLogo",
        enable = true
    })
end

-- تشغيل الدالة عند بدء اللعبة
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        ShowLogo() -- عرض الشعار
        break -- إيقاف التكرار بعد العرض الأول
    end
end)