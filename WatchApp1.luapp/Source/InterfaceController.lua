local InterfaceController = class.extendClass (objc.InterfaceController --[[@inherits WKInterfaceController]])

local superclass = InterfaceController.superclass
local codeChangeMessage = "Main Interface Controller updated"

function InterfaceController:initWithContext(context)
    self = self[superclass]:initWithContext(context)
    if self then
        self:addMessageHandler(codeChangeMessage, "configure")
        
        self.fruitIndex = 1
        self:configure()
    end
    return self
end

function InterfaceController:configure()
    self.fruitsList = { {name = "Banana", resource = "images.banana"}, 
                        {name = "Pear", resource = "images.pear"},
                        {name = "Apricot", resource = "images.apricot"},
                        {name = "Cherry", resource = "images.cerise"},
                      }
    self.maxIndex = #self.fruitsList
    self:displayFruit()
end

function InterfaceController:displayFruit()
    local fruitIndex = self.fruitIndex
    local fruitInfo = self.fruitsList[fruitIndex]
    self.label:setText(fruitInfo.name)
    getResource(fruitInfo.resource, 'public.image', self, function (self, image)
                                                              if fruitIndex == self.fruitIndex then
                                                                  self.image:setImage(image)
                                                              end
                                                          end)
end

function InterfaceController:showNext()
    self.fruitIndex = (self.fruitIndex < self.maxIndex) and (self.fruitIndex + 1) or 1;
    self:displayFruit()
end

function InterfaceController:showPrevious()
    self.fruitIndex = (self.fruitIndex > 1) and (self.fruitIndex - 1) or self.maxIndex;
    self:displayFruit()
end

message.post(codeChangeMessage)

return InterfaceController
