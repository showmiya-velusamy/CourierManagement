from DAO import CourierAdminService,CourierUserService
from Entity import Courier,CourierSercice,Employee,User,Payment


class mainMenu:
    def user_service(self):
        Courier_user_service=CourierUserService()
        while True:
            print("""
                1. Place Order
                2. Get Order Status
                3. Cancel Order
                4. Get Assigned Order
                5. Display order
                6. Exit
                  """)
            choice=int(input("Please choose what you want to do: "))
            if choice==1:
                Courier_id=int(input("COurierId"))
                user_id=int(input("userid"))
                sender_name=input("name")
                sender_address=input("address")
                receiver_name=input("name")
                receiver_address=input("address")
                courier=Courier_id,user_id,sender_name,sender_address,receiver_name,receiver_address
                Courier_user_service.placeOrder(courier)
            elif choice==2:
                tracking_number=input("Enter the tracking number: ")
                Courier_user_service.getOrderStatus(tracking_number) #4567890123
            elif choice==3:
                tracking_number=int(input("Enter the tracking number: "))
                Courier_user_service.cancelOrder(tracking_number)
                
            elif choice==4:
                employee_id=int(input("Enter the employee ID: "))
                Courier_user_service.getAssignedOrder(employee_id)
            elif choice==5:
                Courier_user_service.display_order()
            elif choice==6:
                    break
            else:
                print("Enter proper choice")

    def admin_service(self):
        courier_admin_sevice=CourierAdminService()
        while True:
            print("""
                1. Add Courier Staff
                2. Display employee
                2. Exit
                """)
            choice=int(input("Enter the choice you want to do: "))
            if choice==1:
                name=input("Enter the name: ")
                contact_number=input("Enter the contact number: ")
                courier_admin_sevice.addCourierStaff(name,contact_number)
            elif choice==2:
                courier_admin_sevice.displayEmployee()
            elif choice==3:
                break
            else:
                print("Enter proper choice")

if __name__=="__main__":
    print("WELCOME TO VIRTUAL ART GALLERY")
    main_menu=mainMenu()
    while True:
        print("""
            1. User Service
            2. Admin Service
            3. Exit 
            """)
        choice=int(input("Enter choice you want to do: "))
        if choice==1:
            main_menu.user_service()
        elif choice==2:
            main_menu.admin_service()
        elif choice==3:
            print("Thank You For Your Service")
            break
        else:
            print("Invalid! Enter proper choice")



