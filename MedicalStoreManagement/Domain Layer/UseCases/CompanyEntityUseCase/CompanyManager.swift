//
//  Company.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 04/08/22.
//

import Foundation

class CompanyManager: CompanyHelperProtocol {
    static var companyAdders: CompanyAdderUtil = CompanyAdderUtil()
    static var companyDisplayers: CompanyDisplayerUtil = CompanyDisplayerUtil()
    static var companyRemovers: CompanyRemoverUtil = CompanyRemoverUtil()
    static var companyUpdaters: CompanyUpdaterUtil = CompanyUpdaterUtil()
    
    func addCompany() {
        CompanyManager.companyAdders.addCompany()
    }
    
    func updateCompany() {
        print("1 -> To update the Company Name\n"
              + "2 -> To update Medicine Manufactured\n"
              + "3 -> To update Company Location\n"
              + "4 -> To update production Category\n")
        
        let choice = readLine()
        print()
        
        print("Enter the Name of the Company you'd like to update : ")
        let companyName = readLine()
        
        guard let compName = companyName,compName.count != 0 else{
            print("Empty company name passed for updation")
            return
        }
        
        switch(choice) {
        case "1":
            print("Enter the new Company Name : ")
            let newCompanyName = readLine()
            
            guard let newCompName = newCompanyName,newCompName.count != 0 else{
                print("Empty company name passed for new company name in updation.")
                return
            }
            
            CompanyManager.companyUpdaters.updateCompanyName(form: companyName!, to: newCompanyName!)
            
        case "2":
            print("Enter the new name of the Medicine Manufacured : ")
            let newMedicineManufactured = readLine()
            
            guard let newMed = newMedicineManufactured,newMed.count != 0 else{
                print("Empty value passed for New Medicine Manufactured in updation.")
                return
            }
            
            CompanyManager.companyUpdaters.updateMedicineManufactured(CompanyName: companyName!, NewMedicineName: newMedicineManufactured!)
        case "3":
            print("Enter the new Company Location : ")
            let newLocation = readLine()
            
            guard let location = newLocation,location.count != 0 else{
                print("Empty value passed for company location in updation.")
                return
            }
            
            CompanyManager.companyUpdaters.updateCompanyLocation(CompanyName: companyName!, NewLocation: newLocation!)
        case "4":
//            Display category details.
            CompanyAdderUtil.categoryDisplayers.displayCategoryDetailsWithId()
            
            print("Enter the Production Id of the Company : ")
            let newProduction = readLine()
            
            guard let prodution = newProduction,prodution.count != 0 else{
                print("Empty value passed for Production Id in updation.")
                return
            }
            
            guard let productionId = Int(prodution) else{
                print("Failed to type cast production Id to Int in updation")
                return
            }
            
            CompanyManager.companyUpdaters.updateProductionCategoryId(CompanyName: companyName!, ProductionId: productionId)
        default:
            print("Try to enter a valid choice.")
        }
    }
    
    func displayCompany() {
        print("1 -> Display all Company Details\n"
              + "2 -> Dispaly Company Details Using Company Name")
        
        let choice = readLine()
        print()
        
        switch(choice){
        case "1":
            CompanyManager.companyDisplayers.displayAllCompany()
        case "2":
            print("Enter the name of the Company details to display : ")
            let companyName = readLine()
            
            guard let compName = companyName,compName.count != 0 else{
                print("Empty value passed for Company Name in displaying.")
                return
            }
            
            CompanyManager.companyDisplayers.displayCompany(companyName!)
        default:
            print("Please enter a valid choice.")
        }
    }
    
    func removeCompany() {
        print("Enter the name of the Company to remove : ")
        let companyName = readLine()
        
        guard let compName = companyName,compName.count != 0 else {
            print("Empty Company name passed during removal.")
            return
        }
        
        CompanyManager.companyRemovers.removeCompany(companyName!)
    }
}
