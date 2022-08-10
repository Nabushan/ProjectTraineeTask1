//
//  MedicineEntity.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 04/08/22.
//

import Foundation

class Medicine{
    private var name: String
    private var expiryDate: String
    private var dosage: String
    private var suppliedById: Int
    private var usage: String
    private var pricePerMedicine: String
    private var categoryId: Int
    private var medicineDescription: String{
        return "[Medicine Name = \(name),\n Expiry Date = \(expiryDate),\n Dosage = \(dosage),\n Usage = \(usage),\n Supplied By Id = \(suppliedById),\n Price Per Medicine = \(pricePerMedicine),\n Category Id = \(categoryId)]"
    }
    
    
//    private var medicineDescription: String{
//        return "[Medicine Name = \(medicineName),\n Expiry Date = \(medicineExpiryDate),\n Dosage = \(medicineDosage),\n Supplied By Id = \(medicineSuppliedById),\n Usage = \(medicineUsage),\n Price Per Medicine = \(pricePerMedicine),\n Category Id = \(medicineCategoryId)]"
//    }
    
//    init(){
//        name = ""
//        expiryDate = ""
//        dosage = ""
//        suppliedById = -1
//        usage = ""
//        pricePerMedicine = "Rs.0"
//        categoryId = -1
//    }
    
    init(name: String, expiryDate: String, dosage: String, suppliedById: Int, usage: String, pricePerMedicine: String, categoryId: Int) {
//        self.init()
        self.name = name
        self.expiryDate = expiryDate
        self.dosage = dosage
        self.suppliedById = suppliedById
        self.usage = usage
        self.pricePerMedicine = "Rs."+pricePerMedicine
        self.categoryId = categoryId
    }
    
    func getMedicineName()->String{
        return name
    }
    
    func setMedicineName(_ newMedicineName: String){
        name = newMedicineName
    }
    
    func getMedicineExpiryDate()->String{
        return expiryDate
    }
    
    func setMedicineExpiryDate(_ newMedicineExpiryDate: String){
        expiryDate = newMedicineExpiryDate
    }
    
    func getMedicineDosage()->String{
        return dosage
    }
    
    func setMedicineDosage(_ newMedicineDosage: String){
        dosage = newMedicineDosage
    }
    
    func getMedicineSuppliedById()->Int{
        return suppliedById
    }
    
    func setMedicineSuppliedById(_ newMedicineSuppliedById: Int){
        suppliedById = newMedicineSuppliedById
    }
    
    func getMedicineUsage()->String{
        return usage
    }
    
    func setMedicineUsage(_ newMedicineUsage: String){
        usage = newMedicineUsage
    }
    
    func getPricePerMedicine()->String{
        return pricePerMedicine
    }
    
    func setPricePerMedicine(_ newPricePerMedicine: String){
        pricePerMedicine = "Rs."+newPricePerMedicine
    }
    
    func getMedicineCategoryId()->Int{
        return categoryId
    }
    
    func setMedicineCategoryId(_ newMedicineCategoryId: Int){
        categoryId = newMedicineCategoryId
    }
    
    func showEntityDescription(){
        print(medicineDescription)
    }
}
