//
//  AdminClassRequirements.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 04/08/22.
//

import Foundation

protocol AdminHelperProtocol{
    static var adminDisplayers: AdminDisplayers { get }
    static var adminAdders: AdminAdders { get }
    static var adminGetters: AdminGetters { get }
    static var adminUpdaters: AdminUpdaters { get }
}
