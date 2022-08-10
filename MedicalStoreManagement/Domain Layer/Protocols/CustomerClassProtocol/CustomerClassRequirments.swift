//
//  CustomerClassRequirments.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 05/08/22.
//

import Foundation

protocol CustomerHelperProtocol{
    static var customerAdders: CustomerAdderUtil{ get }
    static var customerDisplayers: CustomerDisplayerUtil{ get }
    static var customerRemovers: CustomerRemoverUtil{ get }
    static var customerUpdaters: CustomerUpdaterUtil{ get }
}
