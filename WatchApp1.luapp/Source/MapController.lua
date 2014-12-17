
local CLLocation = require "CoreLocation.CLLocation"
local MKGeometry = require "MapKit.MKGeometry"

local MapController = class.extendClass(objc.MapController --[[@inherits WKInterfaceController]])

local superclass = objc.WKInterfaceController
local codeChangeMessage = "MapCtrl updated"

function MapController:initWithContext(context)
    self[superclass]:initWithContext(context)
    if self then
        self:addMessageHandler(codeChangeMessage, "configure")
        self:configure()
    end
    return self
end

local MKCoordinateSpan = struct.MKCoordinateSpan
local MKMapRect = struct.MKMapRect
local MKCoordinateRegion = struct.MKCoordinateRegion

function MapController:willActivate()
    self.currentSpan = MKCoordinateSpan(0.05, 0.05)
    self:setMapToCoordinate (48.8534100, 2.3488000) -- Paris
end

function MapController:configure()
end

function MapController:setMapToCoordinate(latitude, longitude)
    
    local coordinate = struct.CLLocationCoordinate2D (latitude, longitude)
    local region =  MKCoordinateRegion (coordinate, self.currentSpan)
    self.currentRegion = region
    
    local newCenterPoint = MKGeometry.MKMapPointForCoordinate(coordinate)
    
    self.map:setVisibleMapRect(MKMapRect(newCenterPoint.x, newCenterPoint.y, self.currentSpan.latitudeDelta, self.currentSpan.longitudeDelta))
    self.map:setRegion(region)
end

function MapController:showApple()
    self:setMapToCoordinate(37.331793, -122.029584)
end

function MapController:showRennes()
    self:setMapToCoordinate(48.105180, -1.674090)
end

function MapController:zoomIn()
    self.currentSpan = MKCoordinateSpan(self.currentSpan.latitudeDelta / 2, self.currentSpan.longitudeDelta / 2)
    
    self.map:setRegion(MKCoordinateRegion(self.currentRegion.center, self.currentSpan))
end

function MapController:zoomOut()
    self.currentSpan = MKCoordinateSpan(self.currentSpan.latitudeDelta * 2, self.currentSpan.longitudeDelta * 2)
    
    self.map:setRegion(MKCoordinateRegion(self.currentRegion.center, self.currentSpan))
end

message.post (codeChangeMessage)

return MapController