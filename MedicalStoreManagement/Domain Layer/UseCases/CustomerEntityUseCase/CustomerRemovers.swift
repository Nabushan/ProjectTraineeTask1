//
//  CustomerRemovers.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 05/08/22.
//

import Foundation

class CustomerRemoverUtil {
//    private static var customerEntity: CustomerEntity = CustomerEntity()
//    static var storeState: Storage?
//
//    func setAdminObject(_ customer: CustomerEntity){
//        CustomerRemovers.customerEntity = customer
//    }
//
//    func setStorageState(_ storage: Storage){
//        CustomerRemovers.storeState = storage
//    }
    
    func removeCustomer(_ customerName: String,_ customerNumber: String){
        let tempStorage = Storage.sharedInstance.getCustomerStorage()
        for index in 0..<tempStorage.count{
            if(tempStorage[index].getCustomerName() == customerName && tempStorage[index].getContactNumber() == customerNumber){
                Storage.sharedInstance.removeCustomerAtIndex(index)
                break
            }
        }
    }
}
