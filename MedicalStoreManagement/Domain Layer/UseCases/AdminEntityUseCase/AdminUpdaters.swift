//
//  AdminUpdaters.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 04/08/22.
//

import Foundation

class AdminUpdaters: AdminOtherHelperProtocol {
    static var medicineManager: MedicineManager = MedicineManager()
    static var companyManager: CompanyManager = CompanyManager()
    static var categoryManager: CategoryManager = CategoryManager()
    static var salesRecordManager: SalesRecordManager = SalesRecordManager()
    
    func changePassword(_ name : String, _ newPassword: String){
        for admin in Storage.sharedInstance.getAdminStorage(){
            if(admin.getAdminName() == name){
                admin.setPassword(newPassword)
                break
            }
        }
    }
    
    func updateMedicine(){
        AdminUpdaters.medicineManager.updateMedicine()
    }
    
    func updateCategory(){
        AdminUpdaters.categoryManager.updateCategory()
    }
    
    func updateCompany(){
        AdminUpdaters.companyManager.updateCompany()
    }
    
    func updateSalesRecord(){
        AdminUpdaters.salesRecordManager.updateSalesRecord()
    }
}
