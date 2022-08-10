//
//  CategoryRemovers.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 05/08/22.
//

import Foundation

class CategoryRemoverUtil{
    func removeCategory(_ categoryName: String){
        let tempStorage = Storage.sharedInstance.getCategoryStorage()
        for index in 0..<tempStorage.count{
            if(tempStorage[index].getCategoryName() == categoryName){
                Storage.sharedInstance.removeCategoryAtIndex(index)
                break
            }
        }
    }
}
