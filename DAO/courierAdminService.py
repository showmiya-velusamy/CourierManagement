
from Util.DBConn import DBConnection
from abc import ABC,abstractmethod
from myexceptions import InvalidEmployeeIdException


class ICourierAdminService(ABC):
    @abstractmethod  
    def addCourierStaff(self, name, contact_number):
        pass
    @abstractmethod
    def displayEmployee(self):
        pass

class  CourierAdminService(ICourierAdminService,DBConnection):
    def addCourierStaff(self,name,contactNumber):
        try:
            self.cursor.execute("INSERT INTO Employee(Name, ContactNumber) VALUES(?,?)",
                        (name,contactNumber)
                        )
            self.cursor.execute("select employeeid from employee where name = ? AND contactNumber = ?",
                                (name,contactNumber))
            employee_id=self.cursor.fetchone()
            print(employee_id)
        except Exception as e:
            print("Error !!",e)

    def displayEmployee(self):
        try:
            self.cursor.execute("SELECT * FROM Employee")
            employees=self.cursor.fetchall()
            for employee in employees:
                print(employee)
        except Exception as e:
            print("Error !!",e)
    
    def displayEmployeeById(self,employeeId):
        try:
            self.cursor.execute("SELECT * FROM Employee where employeeId=?",(employeeId))
            employee=self.cursor.fetchone()
            if employee is None:
                raise InvalidEmployeeIdException(employeeId)
            else:
                print(employee)
        except InvalidEmployeeIdException as e:
            print("Error!!",e)
        except Exception as e:
            print("Error!!",e)

    