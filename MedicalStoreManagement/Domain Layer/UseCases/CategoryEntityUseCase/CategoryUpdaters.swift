//
//  CategoryUpdaters.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 05/08/22.
//

import Foundation

class CategoryUpdaterUtil{
    func updateCategoryName(from categoryName: String,to newCategoryName: String){
        for category in Storage.sharedInstance.getCategoryStorage(){
            if(category.getCategoryName() == categoryName){
                category.setCategoryName(newCategoryName)
                break
            }
        }
    }
    
    func updateUsedFor(CategoryName categoryName: String,UsedFor newUsedFor: String){
        for category in Storage.sharedInstance.getCategoryStorage(){
            if(category.getCategoryName() == categoryName){
                category.setUsedFor(newUsedFor)
                break
            }
        }
    }
    
    func updateAverageCost(CategoryName categoryName: String,AverageCost newAverageCost: String){
        for category in Storage.sharedInstance.getCategoryStorage(){
            if(category.getCategoryName() == categoryName){
                category.setAverageCost(newAverageCost)
                break
            }
        }
    }
}
