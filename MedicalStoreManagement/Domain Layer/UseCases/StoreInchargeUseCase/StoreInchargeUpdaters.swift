//
//  StoreInchargeUpdaters.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 08/08/22.
//

import Foundation

class StoreInchargeUpdaterUtil: StoreInchargeOtherHelperProtocol{
    static var salesRecordManager: SalesRecordManager = SalesRecordManager()
    
    func updateSalesDetails() {
        StoreInchargeUpdaterUtil.salesRecordManager.updateSalesRecord()
    }
}
