local WkInterfaceController = require "WatchKit.WKInterfaceController"
local WKUserNotificationInterfaceType = WkInterfaceController.WKUserNotificationInterfaceType

local NotificationController = class.extendClass (objc.NotificationController --[[@inherits WKUserNotificationInterfaceController]])

function NotificationController:didReceiveLocalNotification_withCompletion(notification, completionHandler)
    print ("NotificationController received local notification: id=" .. notification.aps.category)
    completionHandler(WKUserNotificationInterfaceType.Default)    
end

function NotificationController:didReceiveRemoteNotification_withCompletion(notification, completionHandler)
    print ("NotificationController received remote notification: id=" .. notification.aps.category)
    completionHandler(WKUserNotificationInterfaceType.Custom)    
end

return NotificationController