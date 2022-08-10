//
//  AdminGetters.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 04/08/22.
//

import Foundation

class AdminGetters {
    func getAdminPassword(_ name: String) -> String {
        var returnVal: String = ""
        for admin in Storage.sharedInstance.getAdminStorage(){
            if(admin.getAdminName() == name){
                returnVal = admin.getPassword()
            }
        }
        return returnVal
    }
}
