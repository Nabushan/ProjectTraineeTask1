//
//  MedicineDisplayers.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 04/08/22.
//

import Foundation

class MedicineDisplayerUtil{
//    private static var medicineEntity: Medicine = Medicine()
//    lazy can be used here .
//    static var storeState: Storage?
    
//    func setAdminObject(_ medicine: Medicine){
//        MedicineDisplayers.medicineEntity = medicine
//    }
    
//    func setStorageState(_ storage: Storage){
//        MedicineDisplayers.storeState = storage
//    }
    
    func displayAllMedicines(){
//        for medicineIterator in MedicineDisplayers.storeState!.getMedicineStorage(){
//            medicineIterator.showEntityDescription()
//        }
        
        for medicine in Storage.sharedInstance.getMedicineStorage(){
            medicine.showEntityDescription()
            print()
        }
    }
    
//    func displayMedicine(medicineName name: String)
    func displayMedicine(MedicineName name: String){
//        for medicineIterator in MedicineDisplayers.storeState!.getMedicineStorage(){
//            if(medicineIterator.getMedicineName() == name){
//                medicineIterator.showEntityDescription()
//                break
//            }
//        }
        
        for medicine in Storage.sharedInstance.getMedicineStorage(){
            if(medicine.getMedicineName() == name){
                medicine.showEntityDescription()
                print()
                break
            }
        }
    }
    
    func displayMedicinesWithId(){
//        let tempStorage = MedicineDisplayers.storeState!.getMedicineStorage()
        let tempStorage = Storage.sharedInstance.getMedicineStorage()
        for index in 0..<tempStorage.count{
            print("[Id = \(index),\n Medicine Name = \(tempStorage[index].getMedicineName()),\n Medicine CategoryId = \(tempStorage[index].getMedicineCategoryId()),\n Price Per Medicine = \(tempStorage[index].getPricePerMedicine())]")
            print()
        }
    }
}
