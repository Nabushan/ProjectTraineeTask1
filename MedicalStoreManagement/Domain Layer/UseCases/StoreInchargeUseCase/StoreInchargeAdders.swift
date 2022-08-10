//
//  StoreInchargeAdderUtil.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 08/08/22.
//

import Foundation

class StoreInchargeAdderUtil: StoreInchargeOtherHelperProtocol{
    static var salesRecordManager: SalesRecordManager = SalesRecordManager()
    
    func createPurchaseEntry() {
        StoreInchargeAdderUtil.salesRecordManager.addSalesRecord()
    }
}
