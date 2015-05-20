local DetailController = class.extendClass (objc.DetailController)

local superclass = DetailController.superclass
local codeChangeMessage = "DetailController Controller updated"

function DetailController:init()
    self[superclass]:init()

    self:addMessageHandler(codeChangeMessage, "configure")
end

function DetailController:awakeWithContext(context)
    self.character = context
    self:configure()
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