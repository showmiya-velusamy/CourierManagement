class Courier:
    def __init__(self,courierID , senderName , senderAddress , receiverName , receiverAddress , weight , 
status, trackingNumber , deliveryDate ,userId):
        self.courierID = courierID
        self.senderName = senderName
        self.senderAddress = senderAddress 
        self.receiverName = receiverName
        self.receiverAddress = receiverAddress
        self.weight= weight  
        self.status = status
        self.trackingNumber = trackingNumber
        self.deliveryDate = deliveryDate 
        self.userId = userId