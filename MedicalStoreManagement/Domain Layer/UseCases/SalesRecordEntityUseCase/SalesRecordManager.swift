//
//  SalesRecord.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 05/08/22.
//

import Foundation

class SalesRecordManager: SalesRecordHelperProtocol{
    static var customer: CustomerManager = CustomerManager()
    static var salesRecordAdders: SalesRecordAdderUtil = SalesRecordAdderUtil()
    static var salesRecordDisplayers: SalesRecordDisplayerUtil = SalesRecordDisplayerUtil()
    static var salesRecordRemovers: SalesRecordRemoverUtil = SalesRecordRemoverUtil()
    static var salesRecordUpdaters: SalesRecordUpdaterUtil = SalesRecordUpdaterUtil()
//    var salesRecordEntity: SalesRecordEntity?
//
//    init(){
//        salesRecordEntity = SalesRecordEntity()
//
//        SalesRecord.salesRecordAdders.setAdminObject(salesRecordEntity!)
//        SalesRecord.salesRecordDisplayers.setAdminObject(salesRecordEntity!)
//        SalesRecord.salesRecordRemovers.setAdminObject(salesRecordEntity!)
//        SalesRecord.salesRecordUpdaters.setAdminObject(salesRecordEntity!)
//    }
//
//    func setStorageState(_ storage: Storage){
//        SalesRecord.salesRecordAdders.setStorageState(storage)
//        SalesRecord.salesRecordDisplayers.setStorageState(storage)
//        SalesRecord.salesRecordRemovers.setStorageState(storage)
//        SalesRecord.salesRecordUpdaters.setStorageState(storage)
//    }

    func addSalesRecord(){
        SalesRecordManager.customer.addCustomer()
        
        let tempStorage = Storage.sharedInstance.getCustomerStorage()
        let customerHolder = tempStorage[tempStorage.count - 1]
        
        SalesRecordManager.salesRecordAdders.addSalesRecord(CustomerName: customerHolder.getCustomerName(), ContactNumber: customerHolder.getContactNumber(), PurchaseDate: customerHolder.getPurchaseDate())
    }
    
    func updateSalesRecord(){
        print("Enter the name of the Customer you'd like to update : ")
        let custName = readLine()
        
        guard let customerName = custName,customerName.count != 0 else {
            print("Empty Value Passed for customer Name during Updation.")
            return
        }
        
        print("1 -> To update Customer Name\n"
              + "2 -> To update Customer Number\n"
              + "3 -> To update the prescribed Doctor's Name\n"
              + "4 -> To update the Quantity\n"
              + "5 -> To update the Medicine Category Id\n"
              + "6 -> To update the Medicine Price\n"
              + "7 -> To update the Purchase Date")
        let choice = readLine()
        print()
        
        switch(choice){
        case "1":
            print("Enter the new Name of the Customer : ")
            let newCustName = readLine()
            
            guard let newCustomerName = newCustName,newCustomerName.count != 0 else {
                print("Empty value passed to Customer Name during updation.")
                return
            }
            SalesRecordManager.salesRecordUpdaters.updateCustomerName(customerName, to: newCustomerName)
            
        case "2":
            print("Enter the new Customer Moblie Number : ")
            let mobNumber = readLine()
            
            guard let mobileNumber = mobNumber,mobileNumber.count != 0 && mobileNumber.count == 10 else {
                print("Empty value passed to Customer Mobile during updation.")
                return
            }
            SalesRecordManager.salesRecordUpdaters.updateCustomerMobileNumber(Name: customerName, toNumber: mobileNumber)
            
        case "3":
            print("Enter the new Prescribed Doctor Name : ")
            let docName = readLine()
            
            guard let doctorName = docName,doctorName.count != 0 else {
                print("Empty value passed into Doctor Name during updation.")
                return
            }
            SalesRecordManager.salesRecordUpdaters.updatePrescribedDoctorName(Name: customerName, DoctorName: doctorName)
    
        case "4":
            print("Enter the new Quantity Purchased : ")
            let quantity = readLine()
            
            guard let quantPurchased = quantity,quantPurchased.count != 0 else {
                print("Empty value passed for Quantity Purchased during updation.")
                return
            }
            
            guard let quantityPurchased = Int(quantPurchased) else {
                print("Failed to Type Case Quantity.")
                return
            }
            SalesRecordManager.salesRecordUpdaters.updateQuantityPurchased(Name: customerName, Quantity: quantityPurchased)
        
        case "5":
            print("Enter the new Medicine Category Id : ")
            let medCatId = readLine()
            
            guard let medCategoryId = medCatId,medCategoryId.count != 0 else {
                print("Empty value passed to Medicine Category Id during updation.")
                return
            }
            
            guard let medicineCategoryId = Int(medCategoryId) else {
                print("Failed to Type cast Medicine Category Id.")
                return
            }
            SalesRecordManager.salesRecordUpdaters.updateMedicineCategoryId(Name: customerName, CategoryId: medicineCategoryId)
            
        case "6":
            print("Enter the new Price of the medicine : ")
            let price = readLine()
            
            guard let medPrice = price,medPrice.count != 0 else {
                print("Empty value passed for Medicine Price during updation.")
                return
            }
            
            guard let medicinePrice = Int(medPrice) else {
                print("Failed to type case Medicine Price.")
                return
            }
            
            SalesRecordManager.salesRecordUpdaters.updateMedicinePrice(Name: customerName, Price: medicinePrice)
            
        case "7":
            print("Enter the new Purchase Date(yyyy-mm-dd) : ")
            let date = readLine()
            
            guard let purchaseDate = date,purchaseDate.count != 0 else {
                print("Empty value passed to Purchase Date during updation.")
                return
            }
            SalesRecordManager.salesRecordUpdaters.updatePurchaseDate(Name: customerName, Date: purchaseDate)
            
        default:
            print("Please enter a valid choice.")
        }
    }
    
    func removeSalesRecord(){
        print("1 -> To remove Sales Record using Id\n"
              + "2 -> To remove Sales Record using Name and Number\n"
              + "3 -> To remove Sales Record using Name")
        let choice = readLine()
        
        switch(choice){
        case "1":
            print("Enter the Id of the Sales Record that you'd like to remove : ")
            let id = readLine()
            
            guard let tempId = id,tempId.count != 0 else {
                print("Empty value passed to Id during removal.")
                return
            }
            
            guard let salesId = Int(tempId) else {
                print("Failed to type case id during removal.")
                return
            }
            SalesRecordManager.salesRecordRemovers.removeSalesRecord(Id: salesId)
            
        case "2":
            print("Enter the Customer Name that you'd like to remove : ")
            let name = readLine()
            
            guard let customerName = name,customerName.count != 0 else {
                print("Empty value passed to Customer Name during removal.")
                return
            }
            
            print("Enter the Customer Number that you'd like to remove : ")
            let number = readLine()
            
            guard let mobileNumber = number,mobileNumber.count != 0 && mobileNumber.count == 10 else {
                print("Improper Mobile Number entered during removal.")
                return
            }
            
            let isNumberValid: Bool = Validator.isMobileNumberValid(mobileNumber)
            
            if(!isNumberValid){
                print("The entered number is Invalid.")
                return
            }
            SalesRecordManager.salesRecordRemovers.removeSalesRecord(CustomerName: customerName, CustomerNumber: mobileNumber)
        
        case "3":
            print("Enter the Customer Name that you'd like to remove : ")
            let name = readLine()
            
            guard let customerName = name,customerName.count != 0 else {
                print("Empty value passed to Customer Name during removal.")
                return
            }
            SalesRecordManager.salesRecordRemovers.removeSalesRecord(CustomerName: customerName)
            
        default:
            print("Please enter a valid choice.")
        }
    }
    
    func displaySalesRecords(){
        print("1 -> To display Sales Record using Id\n"
              + "2 -> To display Sales Record using Name and Number\n"
              + "3 -> To display Sales Record using Name\n"
              + "4 -> To display All Sales Record.")
        
        let choice = readLine()
        print()
        
        switch(choice){
        case "1":
            print("Enter the Id of the Sales Record that you'd like to view : ")
            let id = readLine()
            
            guard let tempId = id,tempId.count != 0 else {
                print("Empty value passed to Id during displaying.")
                return
            }
            
            guard let salesId = Int(tempId) else {
                print("Failed to type case id during displaying.")
                return
            }
            SalesRecordManager.salesRecordDisplayers.displaySalesRecord(Id: salesId)
            
        case "2":
            print("Enter the Customer Name that you'd like to view : ")
            let name = readLine()
            
            guard let customerName = name,customerName.count != 0 else {
                print("Empty value passed to Customer Name during displaying.")
                return
            }
            
            print("Enter the Customer Number that you'd like to view : ")
            let number = readLine()
            
            guard let mobileNumber = number,mobileNumber.count != 0 && mobileNumber.count == 10 else {
                print("Improper Mobile Number entered during diplaying.")
                return
            }
            
            let isNumberValid: Bool = Validator.isMobileNumberValid(mobileNumber)
            
            if(!isNumberValid){
                print("The entered number is Invalid.")
                return
            }
            SalesRecordManager.salesRecordDisplayers.displaySalesRecord(CustomerName: customerName, CustomerNumber: mobileNumber)
            
        case "3":
            print("Enter the Customer Name that you'd like to view : ")
            let name = readLine()
            
            guard let customerName = name,customerName.count != 0 else {
                print("Empty value passed to Customer Name during displaying.")
                return
            }
            
            SalesRecordManager.salesRecordDisplayers.displaySalesRecord(CustomerName: customerName)
        
        case "4":
            SalesRecordManager.salesRecordDisplayers.displayAllSalesRecord()
        default:
            print("Please enter a Valid choice.")
        }
    }
}
