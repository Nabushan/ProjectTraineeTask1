//
//  SalesRecordRemovers.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 05/08/22.
//

import Foundation

class SalesRecordRemoverUtil {
//    private static var salesRecordEntity: SalesRecordEntity = SalesRecordEntity()
//    static var storeState: Storage?
//
//    func setAdminObject(_ salesRecord: SalesRecordEntity){
//        SalesRecordRemovers.salesRecordEntity = salesRecord
//    }
//
//    func setStorageState(_ storage: Storage){
//        SalesRecordRemovers.storeState = storage
//    }
    
    func removeSalesRecord(Id id: Int){
        Storage.sharedInstance.removeSalesRecordAtIndex(id)
    }
    
    func removeSalesRecord(CustomerName name: String, CustomerNumber number: String){
        let tempStorage = Storage.sharedInstance.getSalesRecordStorage()
        for index in 0..<tempStorage.count{
            if(tempStorage[index].getIndividualName() == name && tempStorage[index].getIndividualMobileNumber() == number){
                Storage.sharedInstance.removeSalesRecordAtIndex(index)
                break
            }
        }
    }
    
    func removeSalesRecord(CustomerName name: String){
        let tempStorage = Storage.sharedInstance.getSalesRecordStorage()
        for index in 0..<tempStorage.count{
            if(tempStorage[index].getIndividualName() == name){
                Storage.sharedInstance.removeSalesRecordAtIndex(index)
                break
            }
        }
    }
}
