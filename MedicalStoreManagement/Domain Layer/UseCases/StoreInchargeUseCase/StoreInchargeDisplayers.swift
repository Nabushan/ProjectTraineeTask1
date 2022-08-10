//
//  StoreInchargeDisplayerUtil.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 08/08/22.
//

import Foundation

class StoreInchargeDisplayerUtil: StoreInchargeOtherDisplayerHelperProtocol {
    static var categoryDisplayers: CategoryDisplayerUtil = CategoryDisplayerUtil()
    static var medicineDisplayers: MedicineDisplayerUtil = MedicineDisplayerUtil()
    
    func displayAvailableMedicines() {
        StoreInchargeDisplayerUtil.medicineDisplayers.displayAllMedicines()
    }
    
    func displayAvailableCategories() {
        StoreInchargeDisplayerUtil.categoryDisplayers.displayAllCategoryDetails()
    }
}
