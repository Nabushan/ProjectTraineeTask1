//
//  MedicineRemovers.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 04/08/22.
//

import Foundation

class MedicineRemoverUtil{
//    private static var medicineEntity: MedicineEntity = MedicineEntity()
    
//    Instead of passing and storing reference either use a lazy property of create a static class and keep it as a type property
//    and access using the type name.
    
    
//    static var storeState: Storage?
    
//    func setAdminObject(_ medicine: MedicineEntity){
//        MedicineRemovers.medicineEntity = medicine
//    }
    
//    func setStorageState(_ storage: Storage){
//        MedicineRemovers.storeState = storage
//    }
    
    func removeMedicine(MedicineName name: String){
        let tempMedStorage = Storage.sharedInstance.getMedicineStorage()
        for i in 0..<tempMedStorage.count{
            if(tempMedStorage[i].getMedicineName() == name){
//                MedicineRemovers.storeState?.removeMedicineAtIndex(i)
                Storage.sharedInstance.removeMedicineAtIndex(i)
                break
            }
        }
    }
}
