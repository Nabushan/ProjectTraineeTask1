//
//  CategoryAdders.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 05/08/22.
//

import Foundation

class CategoryAdderUtil{
    func addCategory(){
        print("Enter the Category Name : ")
        let catName = readLine()
        
        guard let categoryName = catName,categoryName.count != 0 else{
            print("Empty value passed to categoryName in record addition.")
            return
        }
        
        print("Enter the Usage Criteria for this Category : ")
        let usedFor = readLine()
        
        guard let usageCriteria = usedFor,usageCriteria.count != 0 else{
            print("Empty value passed to usedFor in record addition.")
            return
        }
        
        print("Enter the Average cost for the medicine of this category : ")
        let avgCost = readLine()
        
        guard let averageCost = avgCost,averageCost.count != 0 else{
            print("Empty value passed to averageCost in record addition.")
            return
        }
        
        let category = Category(categoryName: categoryName, usedFor: usageCriteria, averageCost: averageCost)
        
        Storage.sharedInstance.addCategory(category)
    }
}
