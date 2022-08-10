//
//  MedicineAdders.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 04/08/22.
//

import Foundation

//MedicineAdderUtil rename. 
class MedicineAdderUtil: MedicineOtherDisplayerHelperProtocol {
    static var categoryDisplayers: CategoryDisplayerUtil = CategoryDisplayerUtil()
    static var companyDisplayers: CompanyDisplayerUtil = CompanyDisplayerUtil()
    
//    private static var medicine: Medicine = Medicine()
//    static var storeState: Storage?
    
//    func setAdminObject(_ medicine: Medicine){
//        MedicineAdders.medicine = medicine
//    }
//
//    func setStorageState(_ storage: Storage){
//        MedicineAdders.storeState = storage
//    }
    
    func addMedicine(){
//        Create medicine instance here itself and store and the value rather than passing entity reference.
        print("Enter the Medicine Name : ")
        let medName = readLine()
        
        guard let medicineName = medName,medicineName.count != 0 else{
            print("Medicine Name found empty")
            return
        }
        
        print("Enter the Expiry date for the Medicine (yyyy-mm-dd) : ")
        let dateVal = readLine()
        
        guard let date = dateVal,date.count != 0 && date.count == 10 else{
            print("Date found empty")
            return
        }
        
//        var isDateValidated: Bool = false
        do{
            try Validator.isDateValid(date)
//            print("Output of isDateValid(2021-05-04) : ",try Checkers.isDateValid("2021-05-04"))
        }
        catch Validator.Date.UnformattedDate{
            print("The entered date is Unformatted.")
            return
        }
        catch Validator.Date.IllegalMonth{
            print("Entered Month value is out of bounds.")
            return
        }
        catch Validator.Date.IllegalDate{
            print("Entered Date value is out of bounds.")
            return
        }
        catch Validator.Date.AlreadyExpired{
            print("Entered Date is already Expired.")
            return
        }
        catch {
            print("Error caught : ",error)
            return
        }
        
//        if(!isDateValidated){
//            return
//        }
        
        print("Enter the Medicine Dosage : ")
        let dosageVal = readLine()
        
        guard let dosage = dosageVal,dosage.count != 0 else{
            print("Dosage found empty")
            return
        }
        
        print("Enter the medicine usage criteria : ")
        let usage = readLine()
        
        guard let usageReason = usage,usageReason.count != 0 else{
            print("Medicine usage found empty")
            return
        }
        
//        Display Company Details
        MedicineAdderUtil.companyDisplayers.displayCompanyWithIdDetails()
        print("Enter the Company Id : ")
        let companyIdVal = readLine()
        
        guard let companyId = companyIdVal,companyId.count != 0 else{
            print("companyId found empty")
            return
        }
        
        print("Enter the price per Medicine : ")
        let pricePerMedicineVal = readLine()
        
        guard let pricePerMedicine = pricePerMedicineVal,pricePerMedicine.count != 0 else{
            print("Price Per Medicine found empty")
            return
        }
        
//        Display Category Details
        MedicineAdderUtil.categoryDisplayers.displayCategoryDetailsWithId()
        print("Enter the Medicine Category Id : ")
        let medCategoryVal = readLine()
        
        guard let medCategory = medCategoryVal,medCategory.count != 0 else{
            print("Medicine Category found empty")
            return
        }
        
//        MedicineAdders.medicineEntity.setMedicineName(medicineName!)
//        MedicineAdders.medicineEntity.setMedicineExpiryDate(date!)
//        MedicineAdders.medicineEntity.setMedicineDosage(dosage!)
        
        guard let companyIntId = Int(companyId) else{
            print("Type Casting companyId failed.")
            return
        }
        
//        MedicineAdders.medicineEntity.setMedicineSuppliedById(companyIntId)
//        MedicineAdders.medicineEntity.setPricePerMedicine(pricePerMedicine!)
        
        guard let medCategoryIntId = Int(medCategory) else{
            print("Type Casting medicine category failed.")
            return
        }
        
//        MedicineAdders.medicineEntity.setMedicineCategoryId(medCategoryIntId)
        
        let medicine = Medicine(name: medicineName, expiryDate: date, dosage: dosage, suppliedById: companyIntId, usage: usageReason, pricePerMedicine: pricePerMedicine, categoryId: medCategoryIntId)
        
//        To add medicine entity value to the medicine storage.
        Storage.sharedInstance.addMedicine(medicine)
    }
}
