local NsRange = require 'Foundation.NSRange'

local SpearmanController = class.extendClass(objc.SpearmanController --[[@inherits WKInterfaceController]])

local codeChangeMessage = "SpearmanCtrl updated"

function SpearmanController:initWithContext(context)
    self = self[objc.WKInterfaceController]:initWithContext(context)
    
    if self then
        self:addMessageHandler(codeChangeMessage, "configure")
        
        self:configure()
    end
    return self
end

function SpearmanController:configure()
    self.speed = self.speed or 1
end

local WKInterfaceImage = objc.WKInterfaceImage

function SpearmanController:walk()
    local imagesRange = NsRange.NSMakeRange(0, 10);
    self.walkerImage:startAnimatingWithImagesInRange_duration_repeatCount(imagesRange, 1/self.speed, 0)
end

function SpearmanController:pause()
    self.walkerImage:stopAnimating()
end

function SpearmanController:increaseSpeed()
    self.speed = self.speed * 1.5
    self:walk()
end

function SpearmanController:decreaseSpeed()
    self.speed = self.speed / 1.5
    self:walk()
end


message.post(codeChangeMessage)


return SpearmanController