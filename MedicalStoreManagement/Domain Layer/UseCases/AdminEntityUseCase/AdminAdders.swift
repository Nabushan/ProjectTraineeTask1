//
//  AdminFeeders.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 04/08/22.
//

import Foundation

class AdminAdders: AdminOtherHelperProtocol {
    static var medicineManager: MedicineManager = MedicineManager()
    static var companyManager: CompanyManager = CompanyManager()
    static var categoryManager: CategoryManager = CategoryManager()
    static var salesRecordManager: SalesRecordManager = SalesRecordManager()
    
    func addAdminDetails(){
        print("Please enter the Admin name: ")
        let adminName = readLine()
        
        guard let name = adminName,name.count != 0 else{
            print("Name field is empty")
            return
        }
        
        print("Minimum Password Requirments : \n"
              + "Password should be a minimum of 6 Characters\n"
              + "Should have atleast one Capital Character\n"
              + "Should have atleast one Special Character\n"
              + "Should have atleast one Small Character\n")
        
        while(true){
            print("Please enter the password: ")
            let pass = readLine()
            
            guard let password = pass,password.count != 0 else{
                print("Password field is empty")
                return
            }
            
            var isPasswordValidated = Validator.isPasswordValid(password)
            
            if(!isPasswordValidated){
                print("The entered password doesn't match the required conditions.")
                print("Please try again\n")
                print("Please Note : ")
                print("Minimum Password Requirments : \n"
                      + "Password should be a minimum of 6 Characters\n"
                      + "Should have atleast one Capital Character\n"
                      + "Should have atleast one Special Character\n"
                      + "Should have atleast one Small Character\n")
                continue
            }
            
            print("Re - Enter password : ")
            let rePass = readLine()
            
            guard let rePassword = rePass,rePassword.count != 0 else {
                print("RePassword field is empty")
                return
            }
            
            isPasswordValidated = Validator.isPasswordValid(rePassword)
            
            if(!isPasswordValidated){
                print("The entered password doesn't match the required conditions.")
                print("Please try again\n")
                print("Please Note : ")
                print("Minimum Password Requirments : \n"
                      + "Password should be a minimum of 6 Characters\n"
                      + "Should have atleast one Capital Character\n"
                      + "Should have atleast one Special Character\n"
                      + "Should have atleast one Small Character\n")
                continue
            }
            
            if(password == rePassword){
                let admin = Admin(adminName: name, password: password)
                Storage.sharedInstance.addAdmin(admin)
                break
            }
            else{
                print("Entered Password doesn't match please re-enter password.")
            }
        }
    }
    
    func addMedicine(){
        AdminAdders.medicineManager.addMedicine()
    }
    
    func addCompany(){
        AdminAdders.companyManager.addCompany()
    }
    
    func addCategory(){
        AdminAdders.categoryManager.addCategory()
    }
    
    func addSalesRecord(){
        AdminAdders.salesRecordManager.addSalesRecord()
    }
}
