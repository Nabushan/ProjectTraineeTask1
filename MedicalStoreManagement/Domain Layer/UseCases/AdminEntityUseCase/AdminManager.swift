//
//  Admin.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 04/08/22.
//

import Foundation

class AdminManager: AdminHelperProtocol{
    static var adminDisplayers: AdminDisplayers = AdminDisplayers()
    static var adminAdders: AdminAdders = AdminAdders()
    static var adminGetters: AdminGetters = AdminGetters()
    static var adminUpdaters: AdminUpdaters = AdminUpdaters()
    
    func addAdminDetails(){
        AdminManager.adminAdders.addAdminDetails()
    }
    
    func updateAdminPassword(){
        print("Enter the Admin Name : ")
        let name = readLine()
        
        guard let adminName = name,adminName.count != 0 else {
            print("Empty value passed into Admin Name field")
            return
        }
        
        print("Enter the Old Password : ")
        let oldPass = readLine()
        
        guard let oldPassword = oldPass,oldPassword.count != 0 else {
            print("Empty value passed for Password.")
            return
        }
        
        if(oldPassword != AdminManager.adminGetters.getAdminPassword(adminName)){
            print("Password not Matched try again later.")
            return
        }
        
        print("Minimum Password Requirments : \n"
              + "Password should be a minimum of 6 Characters\n"
              + "Should have atleast one Capital Character\n"
              + "Should have atleast one Special Character\n"
              + "Should have atleast one Small Character\n"
              + "Should have atlease one Number\n\n")
        
        while(true){
            print("Enter the password to reset: ")
            let password = readLine()
            
            guard let newPassword = password,newPassword.count != 0 else{
                print("Password field is empty")
                return
            }
            
            var isPasswordValidated = Validator.isPasswordValid(newPassword)
            
            if(!isPasswordValidated){
                print("The entered password doesn't match the required conditions.")
                print("Please try again\n")
                continue
            }
            
            print("Re-Enter the password to reset: ")
            let rePassword = readLine()
            
            guard let reNewPassword = rePassword,reNewPassword.count != 0 else{
                print("Password field is empty")
                return
            }
            
            isPasswordValidated = Validator.isPasswordValid(reNewPassword)
            
            if(!isPasswordValidated){
                print("The entered password doesn't match the required conditions.")
                print("Please try again\n")
                continue
            }
            
            if(newPassword == reNewPassword){
                AdminManager.adminUpdaters.changePassword(adminName, newPassword)
                print("Password reset successfully !")
                break
            }
            else{
                print("Entered Password doesn't match please re-enter password.")
                print("Please Note : ")
                print("Minimum Password Requirments : \n"
                      + "Password should be a minimum of 6 Characters\n"
                      + "Should have atleast one Capital Character\n"
                      + "Should have atleast one Special Character\n"
                      + "Should have atleast one Small Character\n"
                      + "Should have atlease one Number\n\n")
            }
        }
    }
    
    func validateAdmin()->Bool{
        if(Storage.sharedInstance.getAdminStorage().count == 0){
            print("No Admin entry found, Please sign up.")
            return false
        }
        
        var wrongEntryCount: Int = 0
        while(true){
            print("Enter the user Name to log-in: ")
            let name = readLine()
            
            guard let userName = name,userName.count != 0 else{
                print("Empty User name caught.")
                return false
            }
            
            if(Storage.sharedInstance.isAdminPresent(userName)){
//                guard adminValidator != nil else{
//                    print("Admin not returned from Admin.storeState!.getAdmin()")
//                    return false
//                }
                let adminPassword = AdminManager.adminGetters.getAdminPassword(userName)
                
                while(true){
                    if(wrongEntryCount == 3){
                        return false
                    }
                    
                    print("Enter the password : ")
                    let pass = readLine()
                    
                    guard let password = pass,password.count != 0 else{
                        print("Password field is empty.")
                        break
                    }
                    
                    if(password == adminPassword){
                        return true
                    }else{
                        print("Password didnt match try again later.")
                        wrongEntryCount+=1
                    }
                }
                
            }
            else{
                print("Entered admin name is not present. Please enter a Valid Admin Name.")
            }
        }
//        return false
    }
    
    func displayAdmins(){
        AdminManager.adminDisplayers.displayAllAdmins()
    }
    
    func addMedicineDetails(){
        AdminManager.adminAdders.addMedicine()
    }
    
    func addCategoryDetails(){
        AdminManager.adminAdders.addCategory()
    }
    
    func addCompanyDetails(){
        AdminManager.adminAdders.addCompany()
    }
    
    func addSalesRecordDetails(){
        AdminManager.adminAdders.addSalesRecord()
    }
    
    func updateMedicineDetails(){
        AdminManager.adminUpdaters.updateMedicine()
    }
    
    func updateCategoryDetails(){
        AdminManager.adminUpdaters.updateCategory()
    }
    
    func updateCompanyDetails(){
        AdminManager.adminUpdaters.updateCompany()
    }
    
    func updateSalesRecordDetails(){
        AdminManager.adminUpdaters.updateSalesRecord()
    }
    
    func displayMedicineDetails(){
        AdminManager.adminDisplayers.displayMedicineDetails()
    }
    
    func displayCategoryDetails(){
        AdminManager.adminDisplayers.displayCategoryDetails()
    }
    
    func displayCompanyDetails(){
        AdminManager.adminDisplayers.displayCompanyDetails()
    }
    
    func displaySalesRecordDetails(){
        AdminManager.adminDisplayers.displaySalesRecordDetails()
    }
}
