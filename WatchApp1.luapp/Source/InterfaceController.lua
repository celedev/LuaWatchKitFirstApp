local InterfaceController = class.extendClass (objc.InterfaceController --[[@inherits WKInterfaceController]])

local superclass = InterfaceController.superclass
local codeChangeMessage = "Main Interface Controller updated"

function InterfaceController:init()
    self = self[superclass]:init()
    if self then
        self:addMessageHandler(codeChangeMessage, "configure")
    end
    return self
end

function InterfaceController:awakeWithContext(context)
    self.displayIndex = 1
        
    self:configure()
end

function InterfaceController:startTimer(interval, handler)
    self:stopTimer()
    self.timer = objc.NSTimer:scheduledTimerWithTimeInterval_target_selector_userInfo_repeats (interval, self, "handleTimer", 
                                                                                               handler, false)
end

function InterfaceController:stopTimer(interval, handler)
    if self.timer then
        self.timer:invalidate()
        self.timer = nil
    end
end

function InterfaceController:handleTimer(timer)
    timer.userInfo()
end
InterfaceController:publishActionMethod("handleTimer")


function InterfaceController:configure()
    self.characters = { {name = "Gaétan", 
                         image = "images.elephant", 
                         description = "Gaétan est un éléphant.\nL'éléphant est symbole de sagesse dans la culture asiatique, connu pour sa " .. 
                                       "mémoire et son intelligence, qui est comparée à celle des cétacés et hominidés. Aristote avait dit " .. 
                                       "que l'éléphant est « la bête qui dépasse toutes les autres par l'intelligence et l'esprit »." 
                        }, 
                        {name = "Tino", 
                         image = "images.hippo",
                         description = "Tino est un hippopotame.\nSes narines peuvent se refermer par contraction, et leurs conduits auditifs " .. 
                                       "se bouchent lorsqu'ils plongent, ce qui s'avère très pratique dans leur mode de vie amphibie puisqu'ils " .. 
                                       "peuvent ainsi éviter l'entrée d'eau dans leurs poumons lorsqu'ils se déplacent sous l'eau."
                        },
                        {name = "Léon", 
                         image = "images.pig",
                         description = "Léon est un cochon.\nEn Océanie, le cochon est souvent associé à des pratiques culturelles et " .. 
                                       "artistiques. Le championnat de France d'imitation du cri de cochon est organisé annuellement " .. 
                                       "à Trie-sur-Baïse (Hautes-Pyrénées)."
                        },
                        {name = "Zéphirin", 
                         image = "images.penguin",
                         description = "Zéphirin est un pingouin.\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do " .. 
                                       "eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis " .. 
                                       "nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
                        },
                        {name = "Rémi", 
                         image = "images.zebra",
                         description = "Rémi est un zèbre.\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do " .. 
                                       "eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis " .. 
                                       "nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
                        },
                        {name = "Linda", 
                         image = "images.goat",
                         description = "Linda est une chèvre.\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do " .. 
                                       "eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis " .. 
                                       "nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
                        },
                      }
    
    self.maxIndex = #self.characters
    self.characterImages = {}
    self.displayIndex = self.displayIndex or 1
    self:displayCharacter()
end

function InterfaceController:displayCharacter()
    local displayIndex = self.displayIndex
    local displayInfo = self.characters[displayIndex]
    self.label:setText(displayInfo.name)
    if self.characterImages[displayIndex] then
        self.imageGroup:setBackgroundImage(self.characterImages[displayIndex])
    else
        getResource(displayInfo.image, 'public.image', self, function (self, image)
                                                                 self.characterImages[displayIndex] = image
                                                                 if displayIndex == self.displayIndex then
                                                                     self.imageGroup:setBackgroundImage(image)
                                                                 end
                                                             end)
    end
end

function InterfaceController:showNext()
    self.displayIndex = (self.displayIndex < self.maxIndex) and (self.displayIndex + 1) or 1;
    self:displayCharacter()
    -- self:startTimer(10, function () self:showNext() end)
    self:stopTimer()
end

function InterfaceController:showPrevious()
    self.displayIndex = (self.displayIndex > 1) and (self.displayIndex - 1) or self.maxIndex;
    self:displayCharacter()
    self:startTimer(3, function () self:showPrevious() end)
end

function InterfaceController:deleteCharacter()
    -- Remove the current character from the table
    table.remove (self.characters, self.displayIndex)
    -- Reset the cached images
    self.characterImages = {}
    
    --adjust the indexes
    self.maxIndex = #self.characters
    if self.displayIndex > self.maxIndex then 
        self.displayIndex = self.maxIndex
    end
    
    self:displayCharacter()
end

function InterfaceController:pushDetailController()
    self:pushControllerWithName_context("details", self.characters[self.displayIndex])
end

function InterfaceController:showModalControllers()
    self:presentControllerWithNames_contexts({"maps", "spearman"}, nil)
end

function InterfaceController:contextsForSegueWithIdentifier(segueIdentifier)
    self:stopTimer()
end

function InterfaceController:handleActionWithIdentifier_forLocalNotification(identifier, notification)
    print ("Received local notification: id=" .. identifier)
end

function InterfaceController:handleActionWithIdentifier_forRemoteNotification(identifier, notification)
    print ("Received remote notification: id=" .. identifier)
end

message.post(codeChangeMessage)

return InterfaceController
