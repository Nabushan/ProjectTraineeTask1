//
//  MedicineClassRequirments.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 04/08/22.
//

import Foundation

//MedicineHelperProtocol rename same for others.
protocol MedicineHelperProtocol {
    static var medicineAdders: MedicineAdderUtil { get }
    static var medicineUpdaters: MedicineUpdaterUtil { get }
    static var medicineRemovers: MedicineRemoverUtil { get }
    static var medicineDisplayers: MedicineDisplayerUtil { get }
}
