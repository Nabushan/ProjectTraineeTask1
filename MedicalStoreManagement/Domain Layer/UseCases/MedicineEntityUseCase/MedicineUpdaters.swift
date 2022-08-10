//
//  MedicineUpdaters.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 04/08/22.
//

import Foundation

class MedicineUpdaterUtil{
//    private static var medicineEntity: Medicine = Medicine()
//    static var storeState: Storage?
//
//    func setAdminObject(_ medicine: Medicine){
//        MedicineUpdaters.medicineEntity = medicine
//    }
//
//    func setStorageState(_ storage: Storage){
//        MedicineUpdaters.storeState = storage
//    }
    
    func updateMedicineName(from name: String,to newName: String){
//        for medicineIterator in MedicineDisplayers.storeState!.getMedicineStorage(){
//            if(medicineIterator.getMedicineName() == name){
//                medicineIterator.setMedicineName(newName)
//                break
//            }
//        }
        
        for medicine in Storage.sharedInstance.getMedicineStorage(){
            if(medicine.getMedicineName() == name){
                medicine.setMedicineName(newName)
                break
            }
            
        }
    }
    
    func updateMedicineExpiryDate(MedicineName name: String,toDate newDate: String){
//        for medicineIterator in MedicineDisplayers.storeState!.getMedicineStorage(){
//            if(medicineIterator.getMedicineName() == name){
//                medicineIterator.setMedicineExpiryDate(newDate)
//                break
//            }
//        }
        
        for medicine in Storage.sharedInstance.getMedicineStorage(){
            if(medicine.getMedicineName() == name){
                medicine.setMedicineExpiryDate(newDate)
                break
            }
        }
    }
    
    func updateMedicineDosage(MedicineName name: String,toDosage newDosage: String){
//        for medicineIterator in MedicineDisplayers.storeState!.getMedicineStorage(){
//            if(medicineIterator.getMedicineName() == name){
//                medicineIterator.setMedicineDosage(newDosage)
//                break
//            }
//        }
        
        for medicine in Storage.sharedInstance.getMedicineStorage(){
            if(medicine.getMedicineName() == name){
                medicine.setMedicineDosage(newDosage)
                break
            }
        }
    }
    
    func updateMedicineSupplierId(MedicineName name: String,toNewSupplierId newSupplierId: Int){
//        for medicineIterator in MedicineDisplayers.storeState!.getMedicineStorage(){
//            if(medicineIterator.getMedicineName() == name){
//                medicineIterator.setMedicineSuppliedById(newSupplierId)
//                break
//            }
//        }
        
        for medicine in Storage.sharedInstance.getMedicineStorage(){
            if(medicine.getMedicineName() == name){
                medicine.setMedicineSuppliedById(newSupplierId)
                break
            }
        }
    }
    
    func updatePricePerMedicine(MedicineName name: String,toPrice newPrice: String){
//        for medicineIterator in MedicineDisplayers.storeState!.getMedicineStorage(){
//            if(medicineIterator.getMedicineName() == name){
//                medicineIterator.setPricePerMedicine(newPrice)
//                break
//            }
//        }
        
        for medicine in Storage.sharedInstance.getMedicineStorage(){
            if(medicine.getMedicineName() == name){
                medicine.setPricePerMedicine(newPrice)
                break
            }
        }
    }
    
    func updateMedicineCategoryId(MedicineName name: String,toNewCategoryId newId: Int){
//        for medicineIterator in MedicineDisplayers.storeState!.getMedicineStorage(){
//            if(medicineIterator.getMedicineName() == name){
//                medicineIterator.setMedicineCategoryId(newId)
//                break
//            }
//        }
        
        for medicine in Storage.sharedInstance.getMedicineStorage(){
            if(medicine.getMedicineName() == name){
                medicine.setMedicineCategoryId(newId)
                break
            }
        }
    }
    
    func updateUsedFor(MedicineName name: String,UsedFor newUsedFor: String){
        for medicine in Storage.sharedInstance.getMedicineStorage(){
            if(medicine.getMedicineName() == name){
                medicine.setMedicineUsage(newUsedFor)
                break
            }
        }
    }
}
