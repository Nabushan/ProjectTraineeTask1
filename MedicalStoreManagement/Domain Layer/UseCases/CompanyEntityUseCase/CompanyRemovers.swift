//
//  CompanyRemovers.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 04/08/22.
//

import Foundation

class CompanyRemoverUtil {
    func removeCompany(_ companyName: String) {
        let tempCompanyStorage = Storage.sharedInstance.getCompanyStorage()
        for index in 0..<tempCompanyStorage.count{
            if(tempCompanyStorage[index].getCompanyName() == companyName){
                Storage.sharedInstance.removeCompanyAtIndex(index)
                break
            }
        }
    }
}
