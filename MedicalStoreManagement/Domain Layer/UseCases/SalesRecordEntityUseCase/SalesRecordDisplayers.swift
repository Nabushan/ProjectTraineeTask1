//
//  SalesRecordDisplayers.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 05/08/22.
//

import Foundation

class SalesRecordDisplayerUtil {
//    private static var salesRecordEntity: SalesRecordEntity = SalesRecordEntity()
//    static var storeState: Storage?
//    
//    func setAdminObject(_ salesRecord: SalesRecordEntity){
//        SalesRecordDisplayers.salesRecordEntity = salesRecord
//    }
//    
//    func setStorageState(_ storage: Storage){
//        SalesRecordDisplayers.storeState = storage
//    }
    
    func displayAllSalesRecord(){
        for salesRecord in Storage.sharedInstance.getSalesRecordStorage(){
            salesRecord.showEntityDescription()
            print()
        }
        
//        Storage.sharedInstance.getSalesRecordStorage().forEach{ salesRecord in
//            salesRecord.showEntityDescription()
//        }
    }
    
    func displaySalesRecord(Id id: Int){
        Storage.sharedInstance.getSalesRecordStorage()[id].showEntityDescription()
        print()
    }
    
    func displaySalesRecord(CustomerName name: String, CustomerNumber number: String){
        for salesRecord in Storage.sharedInstance.getSalesRecordStorage(){
            if(salesRecord.getIndividualName() == name && salesRecord.getIndividualMobileNumber() == number){
                salesRecord.showEntityDescription()
                print()
                break
            }
        }
    }
    
    func displaySalesRecord(CustomerName name: String){
        for salesRecord in Storage.sharedInstance.getSalesRecordStorage(){
            if(salesRecord.getIndividualName() == name){
                salesRecord.showEntityDescription()
                print()
                break
            }
        }
    }
}
