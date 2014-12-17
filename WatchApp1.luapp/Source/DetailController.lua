local DetailController = class.extendClass (objc.DetailController --[[@inherits WKInterfaceController]])

local superclass = DetailController.superclass
local codeChangeMessage = "DetailController Controller updated"

function DetailController:initWithContext(context)
    self = self[superclass]:initWithContext(context)
    if self then
        self:addMessageHandler(codeChangeMessage, "configure")
        self.character = context
        self:configure()
    end
    return self
end

function DetailController:configure()
    self.nameLabel:setText(self.character.name)
    getResource(self.character.image, 'public.image', self, function (self, image)
                                                                self.image:setImage(image)
                                                            end)
    self.descriptionLabel:setText(self.character.description)
end

message.post (codeChangeMessage)

return DetailController