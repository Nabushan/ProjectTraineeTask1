//
//  Category.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 05/08/22.
//

import Foundation

class CategoryManager: CategoryHelperProtocols{
    static var categoryAdders: CategoryAdderUtil = CategoryAdderUtil()
    static var categoryDisplayers: CategoryDisplayerUtil = CategoryDisplayerUtil()
    static var categoryRemovers: CategoryRemoverUtil = CategoryRemoverUtil()
    static var categoryUpdaters: CategoryUpdaterUtil = CategoryUpdaterUtil()
    
    func addCategory(){
        CategoryManager.categoryAdders.addCategory()
    }
    
    func updateCategory(){
        print("1 -> To set Category Name\n"
              + "2 -> To set the Usage details the Category\n"
              + "3 -> To set Average cost")
        
        let choice = readLine()
        print()
        
        print("Enter the name of the category you'd like to update : ")
        let categoryName = readLine()
        
        guard let catName = categoryName,catName.count != 0 else{
            print("Empty value passed for choosing Category name for updation.")
            return
        }
        
        switch(choice){
        case "1":
            print("Enter the new Category name : ")
            let newCategoryName = readLine()
            
            guard let catName = newCategoryName,catName.count != 0 else{
                print("Empty value passed for new category name in updation.")
                return
            }
            
            CategoryManager.categoryUpdaters.updateCategoryName(from: categoryName!, to: newCategoryName!)
            
        case "2":
            print("Enter the new Usage Details of the category : ")
            let newUsedFor = readLine()
            
            guard let usedFor = newUsedFor,usedFor.count != 0 else{
                print("Empty value passed for Used For field in updation.")
                return
            }
            
            CategoryManager.categoryUpdaters.updateUsedFor(CategoryName: categoryName!, UsedFor: newUsedFor!)
        
        case "3":
            print("Enter the new Average Cost of the Category : ")
            let newAverageCost = readLine()
            
            guard let averageCost = newAverageCost,averageCost.count != 0 else{
                print("Empty value passed for Average Cost during updation.")
                return
            }
            
            CategoryManager.categoryUpdaters.updateAverageCost(CategoryName: categoryName!, AverageCost: newAverageCost!)
            
        default:
            print("Please enter a valid choice.")
        }
    }
    
    func displayCategory(){
        print("1 -> To display all Category details\n"
              + "2 -> To display using Category Name")
        
        let choice = readLine()
        print()
        
        switch(choice){
        case "1":
            CategoryManager.categoryDisplayers.displayAllCategoryDetails()
        case "2":
            print("Enter the name of the Category to display : ")
            let categoryName = readLine()
            
            guard let catName = categoryName,catName.count != 0 else{
                print("Empty value passed for Category name during displaying.")
                return
            }
            
            CategoryManager.categoryDisplayers.displayCategoryDetails(categoryName!)
        default:
            print("Please Enter a valid choice.")
        }
    }
    
    func removeCategory(){
        print("Enter the name of the Category to remove : ")
        let categoryName = readLine()
        
        guard let catName = categoryName,catName.count != 0 else{
            print("Empty value passed for Category name during removal.")
            return
        }
        
        CategoryManager.categoryRemovers.removeCategory(categoryName!)
    }
}
