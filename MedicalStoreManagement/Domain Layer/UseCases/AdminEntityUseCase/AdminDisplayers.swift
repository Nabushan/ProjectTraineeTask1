//
//  AdminDisplayers.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 04/08/22.
//

import Foundation

class AdminDisplayers: AdminOtherHelperProtocol {
    static var medicineManager: MedicineManager = MedicineManager()
    static var companyManager: CompanyManager = CompanyManager()
    static var categoryManager: CategoryManager = CategoryManager()
    static var salesRecordManager: SalesRecordManager = SalesRecordManager()
    
    func displayAllAdmins(){
        for admin in Storage.sharedInstance.getAdminStorage(){
            admin.showEntityDescription()
            print()
        }
    }
    
    func displayMedicineDetails(){
        AdminDisplayers.medicineManager.displayMedicine()
    }
    
    func displayCategoryDetails(){
        AdminDisplayers.categoryManager.displayCategory()
    }
    
    func displayCompanyDetails(){
        AdminDisplayers.companyManager.displayCompany()
    }
    
    func displaySalesRecordDetails(){
        AdminDisplayers.salesRecordManager.displaySalesRecords()
    }
}
