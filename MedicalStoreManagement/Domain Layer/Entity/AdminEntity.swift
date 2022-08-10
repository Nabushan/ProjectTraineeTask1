//
//  AdminEntity.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 03/08/22.
//

import Foundation

//only Admin is enough.
class Admin{
    private var adminName: String
    private var password: String
    private var adminDescription: String{
        return "[Admin Name = \(adminName),\n Password = ******** ]"
    }
    
    init(adminName: String,password: String){
        self.adminName = adminName
        self.password = password
    }
    
    func getAdminName()->String{
        return adminName
    }
    
    func setAdminName(_ adminName: String){
        self.adminName = adminName
    }
    
    func getPassword()->String{
        return password
    }
    
    func setPassword(_ password:String){
        self.password = password
    }
    
    func showEntityDescription(){
        print(adminDescription)
    }
}
