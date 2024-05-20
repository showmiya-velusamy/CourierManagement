class TrackingNumberNotFoundException:
    def __init__(self,trackingNumber):
        super().__init__(f"No such tracking number {trackingNumber} found.")