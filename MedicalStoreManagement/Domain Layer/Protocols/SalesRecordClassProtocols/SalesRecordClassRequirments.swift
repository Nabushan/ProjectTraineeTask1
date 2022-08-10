//
//  SalesRecordClassRequirments.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 05/08/22.
//

import Foundation

protocol SalesRecordHelperProtocol{
    static var salesRecordAdders: SalesRecordAdderUtil { get }
    static var salesRecordDisplayers: SalesRecordDisplayerUtil { get }
    static var salesRecordRemovers: SalesRecordRemoverUtil { get }
    static var salesRecordUpdaters: SalesRecordUpdaterUtil { get }
    static var customer: CustomerManager { get }
}
