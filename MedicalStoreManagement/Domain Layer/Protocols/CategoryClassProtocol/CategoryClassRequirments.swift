//
//  CategoryClassRequirments.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 05/08/22.
//

import Foundation

protocol CategoryHelperProtocols{
    static var categoryAdders: CategoryAdderUtil { get }
    static var categoryDisplayers: CategoryDisplayerUtil { get }
    static var categoryRemovers: CategoryRemoverUtil { get }
    static var categoryUpdaters: CategoryUpdaterUtil { get }
}
