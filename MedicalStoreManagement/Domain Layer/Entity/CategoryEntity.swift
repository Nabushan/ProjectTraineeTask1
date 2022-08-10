//
//  CategoryEntity.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 04/08/22.
//

import Foundation

class Category{
    private var categoryName: String
    private var usedFor: String
    private var averageCost: String
    private var categoryDescription: String{
        return "[Category Name = \(categoryName)\n Used For = \(usedFor)\n AverageCost = \(averageCost)]"
    }
    
    init(categoryName: String,usedFor: String,averageCost: String){
//        self.init()
        self.categoryName = categoryName
        self.usedFor = usedFor
        self.averageCost = "Rs."+averageCost
    }
    
    func getCategoryName()->String{
        return categoryName
    }
    
    func setCategoryName(_ newCategoryName: String){
        categoryName = newCategoryName
    }
    
    func getUsedFor()->String{
        return usedFor
    }
    
    func setUsedFor(_ newUsedFor: String){
        usedFor = newUsedFor
    }
    
    func getAverageCost()->String{
        return averageCost
    }
    
    func setAverageCost(_ newAverageCost: String){
        averageCost = "Rs."+newAverageCost
    }
    
    func showEntityDescription(){
        print(categoryDescription)
    }
}
