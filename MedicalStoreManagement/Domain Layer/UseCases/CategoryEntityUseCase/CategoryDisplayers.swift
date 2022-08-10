//
//  CategoryDisplayers.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 05/08/22.
//

import Foundation

class CategoryDisplayerUtil{
    func displayAllCategoryDetails(){
        for category in Storage.sharedInstance.getCategoryStorage(){
            category.showEntityDescription()
            print()
        }
    }
    
    func displayCategoryDetails(_ categoryName: String){
        for category in Storage.sharedInstance.getCategoryStorage(){
            if(category.getCategoryName() == categoryName){
                category.showEntityDescription()
                print()
                break
            }
        }
    }
        
    func displayCategoryDetailsWithId(){
        let tempStorage = Storage.sharedInstance.getCategoryStorage()
        for index in 0..<tempStorage.count{
            print("[Category Id = \(index),\n Category Name = \(tempStorage[index].getCategoryName())")
            print()
        }
    }
}
