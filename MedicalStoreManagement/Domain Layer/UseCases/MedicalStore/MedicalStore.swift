//
//  MedicalStoreFactory.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 08/08/22.
//

import Foundation

class MedicalStore: MedicalStoreOtherHelperProtocol,MedicalStoreHelperProtocol {
    static var adminManager: AdminManager = AdminManager()
    private var mainFlag: Bool = true
    private let storeIncharge: StoreInchargeManager = StoreInchargeManager()
    
    func access() {
        MedicalStore.loadCategories()
        MedicalStore.loadCompanies()
        MedicalStore.loadMedicines()
        MedicalStore.loadSalesRecords()
        
        while(mainFlag){
            print("1 -> Admin\n"
                  + "2 -> Store Incharge\n"
                  + "3 -> To Quit")
            let accessChoice = readLine()
            print()
            
            switch(accessChoice){
            case "1":
                print("1 -> Sign Up\n"
                    + "2 -> Log In")
                let entryChoice = readLine()
                print()
                var adminPersistFlag = false
                
                switch(entryChoice){
                case "1":
                    MedicalStore.adminManager.addAdminDetails()
                    print()
                    adminPersistFlag = true
                
                case "2":
                    adminPersistFlag = MedicalStore.adminManager.validateAdmin()
                default:
                    print("Enter a valid sign in or log in choice.")
                }
                
                while(adminPersistFlag){
                    print("1 -> To add Details\n"
                          + "2 -> To update Details\n"
                          + "3 -> To display Details\n"
                          + "4 -> To reset Passwod\n"
                          + "5 -> To Enter new Admin Details\n"
                          + "6 -> To log out Admin")
                    let adminAccessChoice = readLine()
                    print()
                    
                    switch(adminAccessChoice){
                    case "1":
                        print("1 -> To add Medicine Details\n"
                              + "2 -> To add Company Details\n"
                              + "3 -> To add Category Details\n"
                              + "4 -> To add Sales Record Details\n"
                              + "5 -> To go Back")
                        let recordAddChoice = readLine()
                        print()
                        
                        switch(recordAddChoice){
                        case "1":
                            MedicalStore.adminManager.addMedicineDetails()
                        case "2":
                            MedicalStore.adminManager.addCompanyDetails()
                        case "3":
                            MedicalStore.adminManager.addCategoryDetails()
                        case "4":
                            MedicalStore.adminManager.addSalesRecordDetails()
                        case "5":
                            ()
                        default:
                            print("Please enter a valid Record Addition Choice.")
                        }
                    case "2":
                        print("1 -> To update Medicine Details\n"
                              + "2 -> To update Company Details\n"
                              + "3 -> To update Category Details\n"
                              + "4 -> To update Sales Record Details\n"
                              + "5 -> To go Back")
                        let updateRecordChoice = readLine()
                        print()
                        
                        switch(updateRecordChoice){
                        case "1":
                            MedicalStore.adminManager.updateMedicineDetails()
                        case "2":
                            MedicalStore.adminManager.updateCompanyDetails()
                        case "3":
                            MedicalStore.adminManager.updateCategoryDetails()
                        case "4":
                            MedicalStore.adminManager.updateSalesRecordDetails()
                        case "5":
                            ()
                        default:
                            print("Please enter a Valid Update Choice.")
                        }
                    case "3":
                        print("1 -> To display Medicine Details\n"
                              + "2 -> To display Company Details\n"
                              + "3 -> To display Category Details\n"
                              + "4 -> To display Sales Record Details\n"
                              + "5 -> To go Back")
                        let displayRecordChoice = readLine()
                        print()
                        
                        switch(displayRecordChoice){
                        case "1":
                            MedicalStore.adminManager.displayMedicineDetails()
                        case "2":
                            MedicalStore.adminManager.displayCompanyDetails()
                        case "3":
                            MedicalStore.adminManager.displayCategoryDetails()
                        case "4":
                            MedicalStore.adminManager.displaySalesRecordDetails()
                        case "5":
                            ()
                        default:
                            print("Please enter a Valid Display Choice.")
                        }
                    case "4":
                        MedicalStore.adminManager.updateAdminPassword()
                    case "5":
                        if(MedicalStore.adminManager.validateAdmin()){
                            MedicalStore.adminManager.addAdminDetails()
                        }
                    case "6":
                        adminPersistFlag = false
                    default:
                        print("Please enter a Valid Admin Access Choice.")
                    }
                }
                
                print("TODO : ")
            case "2":
                var storeInchargePersistFlag: Bool = true
                while(storeInchargePersistFlag){
                    print("1 -> To add Sales Entry\n"
                          + "2 -> To update Sales Entry\n"
                          + "3 -> To display the Medicine Availability\n"
                          + "4 -> To display the Category Availability\n"
                          + "5 -> To log out as Store Incharge.")
                    let inchargeChoice = readLine()
                    print()
                    
                    switch(inchargeChoice){
                    case "1":
                        storeIncharge.addSalesEntry()
                    case "2":
                        storeIncharge.updateSalesEntry()
                    case "3":
                        storeIncharge.showMedicineAvailability()
                    case "4":
                        storeIncharge.showCategoryAvailability()
                    case "5":
                        storeInchargePersistFlag = false
                    default:
                        print("Please enter a valid choice for Store Incharge.")
                    }
                }
            case "3":
                mainFlag = false
            default:
                print("Please enter a valid choice.")
            }
        }
    }
    
    static func loadCategories(){
        Storage.sharedInstance.addCategory(Category(categoryName: "General Medicine", usedFor: "General Purpose Usage", averageCost: "70"))
        
        Storage.sharedInstance.addCategory(Category(categoryName: "Anti-inflammatory painkillers", usedFor: "These are painkillers which also reduce inflammation", averageCost: "150"))
        
        Storage.sharedInstance.addCategory(Category(categoryName: "Antacids", usedFor: "To provide effective relief from acidity and its symptoms such as heartburn, stomach discomfort, and abdominal pain", averageCost: "80"))
    }
    
    static func loadCompanies(){
        Storage.sharedInstance.addCompany(Company(companyName: "Sri Krishna Pharma", medicineManufactured: "Paracetamol", companyLocation: "India", productionCategoryId: 0))
        
        Storage.sharedInstance.addCompany(Company(companyName: "Estrellas Life Sciences Private Limited", medicineManufactured: "Anti-inflammatory painkillers", companyLocation: "India", productionCategoryId: 1))
        
        Storage.sharedInstance.addCompany(Company(companyName: "Esquire Drug House", medicineManufactured: "Antacids", companyLocation: "India", productionCategoryId: 2))
    }
    
    static func loadMedicines(){
        Storage.sharedInstance.addMedicine(Medicine(name: "Paracetamol", expiryDate: "2023-04-03", dosage: "650mg", suppliedById: 0, usage: "Paracetamol eases pain. It also reduces high temperature (fever)", pricePerMedicine: "10", categoryId: 0))
        
        Storage.sharedInstance.addMedicine(Medicine(name: "Brufen", expiryDate: "2024-05-03", dosage: "250mg", suppliedById: 1, usage: "These are painkillers which also reduce inflammation", pricePerMedicine: "200", categoryId: 1))
        
        Storage.sharedInstance.addMedicine(Medicine(name: "Diegene", expiryDate: "2023-04-03", dosage: "50mg", suppliedById: 2, usage: "To provide effective relief from acidity and its symptoms such as heartburn, stomach discomfort, and abdominal pain", pricePerMedicine: "107", categoryId: 2))
    }
    
    static func loadSalesRecords(){
        Storage.sharedInstance.addSalesRecord(SalesRecord(individualName: "Mr.X", individualMobileNumber: "9375816475", prescribedBy: "Dr.Y", medicineId: 0, quantityPurchased: 5, medicineCategoryId: 0, medicinePrice: 10, purchaseDate: "2023-04-03"))
    }
}
