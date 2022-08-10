//
//  CompanyEntity.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 04/08/22.
//

import Foundation

class Company{
    private var companyName: String
    private var medicineManufactured: String
    private var companyLocation: String
    private var productionCategoryId: Int
    private var companyDescription: String{
        return "[Company Name = \(companyName),\n Medicine Manufactured = \(medicineManufactured),\n Company Location = \(companyLocation),\n Production Category Id = \(productionCategoryId)]"
    }
    
    init(companyName: String,medicineManufactured: String,companyLocation: String,productionCategoryId: Int){
//        self.init()
        self.companyName = companyName
        self.medicineManufactured = medicineManufactured
        self.companyLocation = companyLocation
        self.productionCategoryId = productionCategoryId
    }
    
    func getCompanyName()->String{
        return companyName
    }
    
    func setCompanyName(_ newCompanyName: String){
        companyName = newCompanyName
    }
    
    func getMedicineManufactured()->String{
        return medicineManufactured
    }
    
    func setMedicineManufactured(_ newMedicineManufactured: String){
        medicineManufactured = newMedicineManufactured
    }
    
    func getCompanyLocation()->String{
        return companyLocation
    }
    
    func setCompanyLocation(_ newCompanyLocation: String){
        companyLocation = newCompanyLocation
    }
    
    func getProductionCategoryId()->Int{
        return productionCategoryId
    }
    
    func setProductionCategoryId(_ newProductionCategoryId: Int){
        productionCategoryId = newProductionCategoryId
    }
    
    func showEntityDescription(){
        print(companyDescription)
    }
}
