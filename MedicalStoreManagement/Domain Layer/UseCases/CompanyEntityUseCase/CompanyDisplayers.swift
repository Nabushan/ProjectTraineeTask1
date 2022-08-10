//
//  CompanyDisplayers.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 04/08/22.
//

import Foundation

class CompanyDisplayerUtil {
    func displayAllCompany() {
        for company in Storage.sharedInstance.getCompanyStorage(){
            company.showEntityDescription()
            print()
        }
    }
    
    func displayCompany(_ companyName: String) {
        for company in Storage.sharedInstance.getCompanyStorage(){
            if(company.getCompanyName() == companyName){
                company.showEntityDescription()
                print()
                break
            }
        }
    }
    
    func displayCompanyWithIdDetails() {
        let tempCompanyStorage = Storage.sharedInstance.getCompanyStorage()
        for index in 0..<tempCompanyStorage.count{
            print("[Company Id = \(index),\n Company Name = \(tempCompanyStorage[index].getCompanyName()),\n Production Category Id = \(tempCompanyStorage[index].getProductionCategoryId())]")
            print()
        }
    }
}
