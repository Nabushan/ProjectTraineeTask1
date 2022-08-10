//
//  SalesRecordUpdaters.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 05/08/22.
//

import Foundation

class SalesRecordUpdaterUtil {
//    private static var salesRecordEntity: SalesRecordEntity = SalesRecordEntity()
//    static var storeState: Storage?
//
//    func setAdminObject(_ salesRecord: SalesRecordEntity){
//        SalesRecordUpdaters.salesRecordEntity = salesRecord
//    }
//
//    func setStorageState(_ storage: Storage){
//        SalesRecordUpdaters.storeState = storage
//    }
    
    func updateCustomerName(_ name: String,to newName: String){
        for salesRecord in Storage.sharedInstance.getSalesRecordStorage(){
            if(salesRecord.getIndividualName() == name){
                salesRecord.setIndividualName(newName)
                break
            }
        }
    }
    
    func updateCustomerMobileNumber(Name name: String,toNumber number: String){
        for salesRecord in Storage.sharedInstance.getSalesRecordStorage(){
            if(salesRecord.getIndividualName() == name){
                salesRecord.setIndividualMobileNumber(number)
                break
            }
        }
    }
    
    func updatePrescribedDoctorName(Name name: String,DoctorName docName: String){
        for salesRecord in Storage.sharedInstance.getSalesRecordStorage(){
            if(salesRecord.getIndividualName() == name){
                salesRecord.setPrescribedBy(docName)
                break
            }
        }
    }
    
    func updateQuantityPurchased(Name name: String,Quantity quantity: Int){
        for salesRecord in Storage.sharedInstance.getSalesRecordStorage(){
            if(salesRecord.getIndividualName() == name){
                salesRecord.setQuantityPurchased(quantity)
                break
            }
        }
    }
    
    func updateMedicineCategoryId(Name name: String,CategoryId categoryId: Int){
        for salesRecord in Storage.sharedInstance.getSalesRecordStorage(){
            if(salesRecord.getIndividualName() == name){
                salesRecord.setMedicineCategoryId(categoryId)
                break
            }
        }
    }
    
    func updateMedicinePrice(Name name: String,Price cost: Int){
        for salesRecord in Storage.sharedInstance.getSalesRecordStorage(){
            if(salesRecord.getIndividualName() == name){
                salesRecord.setMedicinePrice(cost)
                break
            }
        }
    }
    
    func updatePurchaseDate(Name name: String,Date date: String){
        do{
            try Validator.isDateValid(date)
            for salesRecord in Storage.sharedInstance.getSalesRecordStorage(){
                if(salesRecord.getIndividualName() == name){
                    salesRecord.setPurchaseDate(date)
                    break
                }
            }
        }
        catch Validator.Date.UnformattedDate{
            print("The entered date is Unformatted.")
            return
        }
        catch Validator.Date.IllegalMonth{
            print("Entered Month value is out of bounds.")
            return
        }
        catch Validator.Date.IllegalDate{
            print("Entered Date value is out of bounds.")
            return
        }
        catch Validator.Date.AlreadyExpired{
            print("Entered Date is already Expired.")
            return
        }
        catch {
            print("Unknown Error : ",error)
        }
    }
}
