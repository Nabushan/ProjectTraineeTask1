//
//  SalesRecordEntity.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 04/08/22.
//

import Foundation

class SalesRecord{
    private var individualName: String
    private var individualMobileNumber: String
    //private var individualId: Int
    private var prescribedBy: String
    private var medicineId: Int
    private var quantityPurchased: Int
    private var medicineCategoryId: Int
    private var medicinePrice: Int
    private var totalCost: String
    private var purchaseDate: String
    private var salesRecordDescription: String{
        return "[Individual Name = \(individualName),\n Mobile Number = \(individualMobileNumber),\n Prescribed By = \(prescribedBy),\n Medicine Id = \(medicineId),\n Quantity Purchased = \(quantityPurchased),\n Medicine Category Id = \(medicineCategoryId),\n Medicine Price = \(medicinePrice),\n Total Cost = \(totalCost),\n Purchase Date = \(purchaseDate)]"
    }
    
    init(individualName: String, individualMobileNumber: String, prescribedBy: String, medicineId: Int, quantityPurchased: Int, medicineCategoryId: Int, medicinePrice: Int, purchaseDate: String){
        self.individualName = individualName
        self.individualMobileNumber = individualMobileNumber
//        self.individualId = individualId
        self.prescribedBy = prescribedBy
        self.medicineId = medicineId
        self.quantityPurchased = quantityPurchased
        self.medicineCategoryId = medicineCategoryId
        self.medicinePrice = medicinePrice
        self.totalCost = "Rs.\(medicinePrice * quantityPurchased)"
        self.purchaseDate = purchaseDate
    }
    
    func getIndividualName()->String{
        return individualName
    }
    
    func setIndividualName(_ newIndividualName: String){
        individualName = newIndividualName
    }
    
    func getIndividualMobileNumber()->String{
        return individualMobileNumber
    }
    
    func setIndividualMobileNumber(_ newIndividualMobileNumber: String){
        individualMobileNumber = newIndividualMobileNumber
    }
    
//    func getIndividualId()->Int{
//        return individualId
//    }
//
//    func setIndividualId(_ newIndividualId: Int){
//        individualId = newIndividualId
//    }
    
    func getPrescribedBy()->String{
        return prescribedBy
    }
    
    func setPrescribedBy(_ newPrescribedBy: String){
        prescribedBy = newPrescribedBy
    }
    
    func getMedicineId()->Int{
        return medicineId
    }
    
    func setMedicineId(_ newMedicineId: Int){
        medicineId = newMedicineId
    }
    
    func getquantityPurchased()->Int{
        return quantityPurchased
    }
    
    func setQuantityPurchased(_ newQuantityPurchased: Int){
        quantityPurchased = newQuantityPurchased
        totalCost = "Rs.\(medicinePrice * quantityPurchased)"
    }
    
    func getMedicineCategoryId()->Int{
        return medicineCategoryId
    }
    
    func setMedicineCategoryId(_ newMedicineCategoryId: Int){
        medicineCategoryId = newMedicineCategoryId
    }
    
    func getMedicinePrice()->Int{
        return medicinePrice
    }
    
    func setMedicinePrice(_ newMedicinePrice: Int){
        medicinePrice = newMedicinePrice
        totalCost = "Rs.\(medicinePrice * quantityPurchased)"
    }
    
    func getTotalCost()->String{
        return totalCost
    }
  
//    Setting total cost would be ambigous.
//    func setTotalCost(_ newTotalCost: String){
//        totalCost = "Rs."+newTotalCost
//    }
    
    func getPurchaseDate()->String{
        return purchaseDate
    }
    
    func setPurchaseDate(_ newPurchaseDate: String){
        purchaseDate = newPurchaseDate
    }
    
    func showEntityDescription(){
        print(salesRecordDescription)
    }
}
