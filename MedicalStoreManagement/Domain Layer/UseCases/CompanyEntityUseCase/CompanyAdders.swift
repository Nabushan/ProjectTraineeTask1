//
//  CompanyAdders.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 04/08/22.
//

import Foundation

class CompanyAdderUtil:CompanyOtherDisplayerHelperProtocol {
    static var categoryDisplayers: CategoryDisplayerUtil = CategoryDisplayerUtil()
    
    func addCompany() {
        print("Enter the name of the Company : ")
        let companyName = readLine()
        
        guard let compName = companyName,compName.count != 0 else{
            print("Empty value passed to Company Name")
            return
        }
        
        print("Enter the Medicine manufactured by the Company : ")
        let medicineName = readLine()
        
        guard let medName = medicineName,medName.count != 0 else{
            print("Empty value passed to Medicine Name")
            return
        }
        
        print("Enter the location of the Company : ")
        let companyLocation = readLine()
        
        guard let compLocation = companyLocation,compLocation.count != 0 else{
            print("Empty value passed to Company Location")
            return
        }
        
//        Display Category here
        CompanyAdderUtil.categoryDisplayers.displayCategoryDetailsWithId()
        
        print("Enter the Medicine Production Category ID : ")
        let medProductionCategory = readLine()
        
        guard let category = medProductionCategory,category.count != 0 else{
            print("Empty value passed to Medicine Produciton Category")
            return
        }
        
        guard let categoryIntId = Int(category) else{
            print("Failed to type cast Category ID")
            return
        }
        
        let company = Company(companyName: compName, medicineManufactured: medName, companyLocation: compLocation, productionCategoryId: categoryIntId)
        
        Storage.sharedInstance.addCompany(company)
    }
}
