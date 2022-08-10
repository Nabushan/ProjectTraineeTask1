//
//  CompanyUpdaters.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 04/08/22.
//

import Foundation

class CompanyUpdaterUtil {
    func updateCompanyName(form companyName: String,to newCompanyName: String) {
        for company in Storage.sharedInstance.getCompanyStorage(){
            if(company.getCompanyName() == companyName){
                company.setCompanyName(newCompanyName)
                break
            }
        }
    }
    
    func updateMedicineManufactured(CompanyName companyName: String,NewMedicineName newMedicineManufactured: String) {
        for company in Storage.sharedInstance.getCompanyStorage(){
            if(company.getCompanyName() == companyName){
                company.setMedicineManufactured(newMedicineManufactured)
                break
            }
        }
    }
    
    func updateCompanyLocation(CompanyName companyName: String,NewLocation newLocation: String) {
        for company in Storage.sharedInstance.getCompanyStorage(){
            if(company.getCompanyName() == companyName){
                company.setCompanyLocation(newLocation)
                break
            }
        }
    }
    
    func updateProductionCategoryId(CompanyName companyName: String,ProductionId newProductionId: Int) {
        for company in Storage.sharedInstance.getCompanyStorage(){
            if(company.getCompanyName() == companyName){
                company.setProductionCategoryId(newProductionId)
                break
            }
        }
    }
}
