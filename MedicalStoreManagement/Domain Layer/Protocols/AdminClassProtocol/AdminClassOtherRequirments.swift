//
//  AdminClassOtherRequirments.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 08/08/22.
//

import Foundation

protocol AdminOtherHelperProtocol{
    static var medicineManager: MedicineManager { get }
    static var companyManager: CompanyManager { get }
    static var categoryManager: CategoryManager { get }
    static var salesRecordManager: SalesRecordManager { get }
}
