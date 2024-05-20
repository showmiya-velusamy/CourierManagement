class InvalidEmployeeIdException(Exception):
    def __init__(self,employeeId):
        super().__init__(f"Employee with ID {employeeId} not found.")