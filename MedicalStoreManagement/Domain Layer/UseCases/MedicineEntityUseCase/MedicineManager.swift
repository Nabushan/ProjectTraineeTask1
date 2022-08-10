//
//  Medicine.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 04/08/22.
//

import Foundation

//MedicineManager
class MedicineManager: MedicineHelperProtocol{
    static var medicineAdders: MedicineAdderUtil = MedicineAdderUtil()
    static var medicineUpdaters: MedicineUpdaterUtil = MedicineUpdaterUtil()
    static var medicineRemovers: MedicineRemoverUtil = MedicineRemoverUtil()
    static var medicineDisplayers: MedicineDisplayerUtil = MedicineDisplayerUtil()
//    var medicineEntity: Medicine?
    
//    init(){
//        medicineEntity = Medicine()
//
//        MedicineManager.medicineAdders.setAdminObject(medicineEntity!)
//        MedicineManager.medicineRemovers.setAdminObject(medicineEntity!)
//        MedicineManager.medicineUpdaters.setAdminObject(medicineEntity!)
//        MedicineManager.medicineDisplayers.setAdminObject(medicineEntity!)
//    }
    
//    func setStorageState(_ storage: Storage){
//        MedicineManager.medicineAdders.setStorageState(storage)
//        MedicineManager.medicineUpdaters.setStorageState(storage)
//        MedicineManager.medicineRemovers.setStorageState(storage)
//        MedicineManager.medicineDisplayers.setStorageState(storage)
//    }
    
    func addMedicine(){
        MedicineManager.medicineAdders.addMedicine()
        
//        medicineEntity = Medicine()
//
//        MedicineManager.medicineAdders.setAdminObject(medicineEntity!)
//        MedicineManager.medicineRemovers.setAdminObject(medicineEntity!)
//        MedicineManager.medicineUpdaters.setAdminObject(medicineEntity!)
//        MedicineManager.medicineDisplayers.setAdminObject(medicineEntity!)
    }
    
    func updateMedicine(){
        print("Enter the name of the Medicine to update")
        let medName = readLine()
        
        guard let medicineName = medName,medicineName.count != 0 else{
            print("Empty name passed")
            return
        }
        
        print("1 -> To update Medicine Name\n"
              + "2 -> To update Expiry Date\n"
              + "3 -> To update Dosage\n"
              + "4 -> To update Supplier Id\n"
              + "5 -> To update Price Per Medicine\n"
              + "6 -> To update Medicine Category Id\n"
              + "7 -> To update Used For")
        
        let choice = readLine()
        print()
        
        switch(choice){
        case "1":
            print("Enter the new Medicine Name : ")
            let newMedName = readLine()
            
            guard let medicineName = newMedName,medicineName.count != 0 else{
                print("Empty name passed")
                break
            }
            
            MedicineManager.medicineUpdaters.updateMedicineName(from: medName!, to: newMedName!)
        case "2":
            print("Enter the new Expiry Date : ")
            let newExpiryDate = readLine()
            
            guard let expiryDate = newExpiryDate,expiryDate.count != 0 && expiryDate.count == 10 else{
                print("Empty date passed")
                break
            }
            
            MedicineManager.medicineUpdaters.updateMedicineExpiryDate(MedicineName: medName!, toDate: newExpiryDate!)
        case "3":
            print("Enter the new Dosage to update : ")
            let newDosage = readLine()
            
            guard let dosage = newDosage,dosage.count != 0 else{
                print("Empty dosage passed")
                break
            }
            
            MedicineManager.medicineUpdaters.updateMedicineDosage(MedicineName: medName!, toDosage: newDosage!)
            
        case "4":
//          display Company Id Details
            MedicineAdderUtil.companyDisplayers.displayCompanyWithIdDetails()
            
            print("Enter the new Supplier Id : ")
            let newSupplierId = readLine()
            
            guard let supplierId = newSupplierId,supplierId.count != 0 else{
                print("Empty name passed")
                break
            }

            guard let supplierIntId = Int(newSupplierId!) else{
                print("Exit during supplier Id Int typecast")
                break
            }
            
            MedicineManager.medicineUpdaters.updateMedicineSupplierId(MedicineName: medName!, toNewSupplierId: supplierIntId)
            
        case "5":
            print("Enter the new price of the Medicine : ")
            let newPrice = readLine()
            
            guard let price = newPrice, price.count != 0 else{
                print("Empty price passed")
                break
            }
            
            MedicineManager.medicineUpdaters.updatePricePerMedicine(MedicineName: medName!, toPrice: price)
            
        case "6":
//          display Category Id Details.
            MedicineAdderUtil.categoryDisplayers.displayCategoryDetailsWithId()
            
            print("Enter the new Medicine Category : ")
            let newCategory = readLine()
            
            guard let category = newCategory,category.count != 0 else{
                print("Empty category passed")
                break
            }
            
            guard let newCategoryInt = Int(newCategory!) else {
                return
            }

            MedicineManager.medicineUpdaters.updateMedicineCategoryId(MedicineName: medName!, toNewCategoryId: newCategoryInt)
        
        case "7":
            print("Enter teh new Usage of the Medicine : ")
            let newUsedFor = readLine()
            
            guard let usedFor = newUsedFor, usedFor.count != 0 else{
                print("Empty Used For passed")
                break
            }
            MedicineManager.medicineUpdaters.updateUsedFor(MedicineName: medName!, UsedFor: newUsedFor!)
            
        default:
            print("Try to enter a valid choice")
        }
    }
    
    func displayMedicine(){
        print("1 -> To display All Medicines\n"
              + "2 -> To display medicine by Name")
        
        let choice = readLine()
        print()
        
        switch(choice){
        case "1":
            MedicineManager.medicineDisplayers.displayAllMedicines()
        case "2":
            print("Enter the name of the Medicine to display details : ")
            let medName = readLine()
            
            guard let medicineName = medName,medicineName.count != 0 else{
                print("Empty name passed")
                break
            }
            
            MedicineManager.medicineDisplayers.displayMedicine(MedicineName: medName!)
        default:
            print("Try to enter a Valid Choice.")
        }
    }
    
    func removeMedicine(){
        print("Enter the name of the Medicine to remove: ")
        let medName = readLine()
        
        guard let medicineName = medName,medicineName.count != 0 else{
            print("Empty name passed")
            return
        }
        
        MedicineManager.medicineRemovers.removeMedicine(MedicineName: medName!)
    }
}
