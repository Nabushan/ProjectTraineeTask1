//
//  StoreInchargeManager.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 08/08/22.
//

import Foundation

class StoreInchargeManager: StoreInchargeHelperProtocol {
    static var storeInchargeAdders: StoreInchargeAdderUtil = StoreInchargeAdderUtil()
    static var storeInchargeUpdaters: StoreInchargeUpdaterUtil = StoreInchargeUpdaterUtil()
    static var storeInchargeDisplayers: StoreInchargeDisplayerUtil = StoreInchargeDisplayerUtil()
    
    func addSalesEntry() {
        StoreInchargeManager.storeInchargeAdders.createPurchaseEntry()
    }
    
    func updateSalesEntry() {
        StoreInchargeManager.storeInchargeUpdaters.updateSalesDetails()
    }
    
    func showMedicineAvailability() {
        StoreInchargeManager.storeInchargeDisplayers.displayAvailableMedicines()
    }
    
    func showCategoryAvailability() {
        StoreInchargeManager.storeInchargeDisplayers.displayAvailableCategories()
    }
}
