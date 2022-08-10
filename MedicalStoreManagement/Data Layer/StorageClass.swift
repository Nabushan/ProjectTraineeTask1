//
//  StorageClass.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 04/08/22.
//

import Foundation

// Its a Singleton Class.
class Storage {
//    admins rename.
    private var admins: [Admin]
    private var medicines: [Medicine]
    private var companies: [Company]
    private var categories: [Category]
    private var customers: [Customer]
    private var salesRecords: [SalesRecord]
 
    static let sharedInstance = Storage()
    
    private init() {
        admins = []
        medicines = []
        companies = []
        categories = []
        customers = []
        salesRecords = []
    }
    
    func reset() {
        admins = []
        medicines = []
        companies = []
        categories = []
        customers = []
    }
    
//     Admin Related Functions.
    func addAdmin(_ admin: Admin) {
        admins.append(admin)
    }
    
    func getAdminStorage() -> [Admin] {
        return admins
    }
    
    func isAdminPresent(_ name: String) -> Bool {
        for admin in admins{
            if(name == admin.getAdminName()){
                return true
            }
        }
        return false
    }
    
    func getAdmin(from name: String) -> Admin? {
        for admin in admins{
            if(name == admin.getAdminName()){
                return admin
            }
        }
        return nil
    }
    
//    Medicine Related Fucntions
    func addMedicine(_ medicine: Medicine) {
        medicines.append(medicine)
    }
    
    func getMedicineStorage()->[Medicine] {
        return medicines
    }
    
    func removeMedicineAtIndex(_ index: Int) {
        medicines.remove(at: index)
    }
    
//    Company related functions
    func addCompany(_ company: Company) {
        companies.append(company)
    }
    
    func getCompanyStorage() -> [Company] {
        return companies
    }
    
    func removeCompanyAtIndex(_ index: Int) {
        companies.remove(at: index)
    }
    
//    Category related functions
    func addCategory(_ category: Category) {
        categories.append(category)
    }
        
    func getCategoryStorage() -> [Category] {
        return categories
    }
    
    func removeCategoryAtIndex(_ index: Int){
        categories.remove(at: index)
    }
    
//    Category related functions
    func addCustomer(_ customer: Customer) {
        customers.append(customer)
    }
        
    func getCustomerStorage() -> [Customer] {
        return customers
    }
    
    func removeCustomerAtIndex(_ index: Int) {
        customers.remove(at: index)
    }
    
//    Category related functions
    func addSalesRecord(_ customer: SalesRecord) {
        salesRecords.append(customer)
    }
        
    func getSalesRecordStorage() -> [SalesRecord] {
        return salesRecords
    }
    
    func removeSalesRecordAtIndex(_ index: Int) {
        salesRecords.remove(at: index)
    }
}
