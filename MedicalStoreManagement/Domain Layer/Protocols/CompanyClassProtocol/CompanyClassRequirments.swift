//
//  CompanyClassRequirments.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 05/08/22.
//

import Foundation

protocol CompanyHelperProtocol{
    static var companyAdders: CompanyAdderUtil { get }
    static var companyDisplayers: CompanyDisplayerUtil { get }
    static var companyRemovers: CompanyRemoverUtil { get }
    static var companyUpdaters: CompanyUpdaterUtil { get }
}
