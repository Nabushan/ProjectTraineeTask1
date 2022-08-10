//
//  SalesRecordAdders.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 05/08/22.
//

import Foundation

class SalesRecordAdderUtil:SalesRecordOtherHelperRequirments{
    static var medicineClassDisplayers: MedicineDisplayerUtil = MedicineDisplayerUtil()
//    private static var salesRecordEntity: SalesRecordEntity = SalesRecordEntity()
//    static var storeState: Storage?
//
//    func setAdminObject(_ salesRecord: SalesRecordEntity){
//        SalesRecordAdders.salesRecordEntity = salesRecord
//    }
//
//    func setStorageState(_ storage: Storage){
//        SalesRecordAdders.storeState = storage
//    }
//
    func addSalesRecord(CustomerName customerName: String,ContactNumber contactNumber: String,PurchaseDate date: String){
//        SalesRecordAdders.salesRecordEntity.setIndividualName(customerName)
//        SalesRecordAdders.salesRecordEntity.setIndividualMobileNumber(contactNumber)
//        SalesRecordAdders.salesRecordEntity.setPurchaseDate(date)
//
        print("Enter the name of the Doctor who issued prescription : ")
        let docName = readLine()
        
        guard let doctorName = docName,doctorName.count != 0 else{
            print("Empty value passed to Doctor name field during addition.")
            return
        }
        
//        Displaying medicine with Id and category Id.
        SalesRecordAdderUtil.medicineClassDisplayers.displayMedicinesWithId()
        
        print("Enter the Medicine Id : ")
        let medicine = readLine()
        
        guard let medId = medicine,medId.count != 0 else{
             print("Empty value passed to medicine Id")
            return
        }
        
//        medicineId final Int value
        guard let medicineId = Int(medId) else{
            print("Error during medicine Int conversion")
            return
        }
        
        print("Enter the Medicine Category Id : ")
        let medicineCategory = readLine()
        
        guard let medId = medicineCategory,medId.count != 0 else{
             print("Empty value passed to medicine category Id")
            return
        }
        
//        medicineCategoryId final Int value
        guard let medicineCategoryId = Int(medId) else{
            print("Error during medicine Int conversion")
            return
        }
        
        print("Enter the quantity of the Medicine Purchased : ")
        let quantity = readLine()
        
        guard let numberOfMed = quantity,numberOfMed.count != 0 else{
             print("Empty value passed to Quantity")
            return
        }
        
        guard let quantityOfMedicine = Int(numberOfMed) else{
            print("Error during Quantity Int conversion")
            return
        }
        
        let medPrice = Storage.sharedInstance.getMedicineStorage()[medicineId].getPricePerMedicine()
        let medPriceRange = medPrice.index(medPrice.startIndex, offsetBy: 3)...
        print(medPrice[medPriceRange])
        let medicinePrice = Int(String(medPrice[medPriceRange])) ?? 0
        
        let salesRecord = SalesRecord(individualName: customerName, individualMobileNumber: contactNumber, prescribedBy: doctorName, medicineId: medicineId, quantityPurchased: quantityOfMedicine, medicineCategoryId: medicineCategoryId, medicinePrice: medicinePrice, purchaseDate: date)
        
        Storage.sharedInstance.addSalesRecord(salesRecord)
    }
}
