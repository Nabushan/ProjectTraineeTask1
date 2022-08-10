//
//  StoreInchargeClassRequirments.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 08/08/22.
//

import Foundation

protocol StoreInchargeHelperProtocol{
    static var storeInchargeAdders: StoreInchargeAdderUtil { get }
    static var storeInchargeUpdaters: StoreInchargeUpdaterUtil { get }
    static var storeInchargeDisplayers: StoreInchargeDisplayerUtil { get }
}
