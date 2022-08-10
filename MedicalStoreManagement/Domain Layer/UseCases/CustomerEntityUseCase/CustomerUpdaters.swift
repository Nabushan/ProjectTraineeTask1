//
//  CustomerUpdaters.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 05/08/22.
//

import Foundation

class CustomerUpdaterUtil {
//    private static var customerEntity: CustomerEntity = CustomerEntity()
//    static var storeState: Storage?
//
//    func setAdminObject(_ customer: CustomerEntity){
//        CustomerUpdaters.customerEntity = customer
//    }
//
//    func setStorageState(_ storage: Storage){
//        CustomerUpdaters.storeState = storage
//    }
    
    func updateCustomerName(from customerName: String,CustomerNumber customerNumber: String,to newCustomerName: String){
//        for customerIterator in CustomerUpdaters.storeState!.getCustomerStorage(){
//            if(customerIterator.getCustomerName() == customerName && customerIterator.getContactNumber() == customerNumber){
//                customerIterator.setCustomerName(newCustomerName)
//                break
//            }
//        }
        
        for customer in Storage.sharedInstance.getCustomerStorage(){
            if(customer.getCustomerName() == customerName && customer.getContactNumber() == customerNumber){
                customer.setCustomerName(newCustomerName)
                break
            }
        }
    }
    
    func updateCustomerContactNumber(CustomerName customerName: String,CustomerNumber customerNumber: String,ContactNumber newContactNumber: String){
//        for customerIterator in CustomerUpdaters.storeState!.getCustomerStorage(){
//            if(customerIterator.getCustomerName() == customerName && customerIterator.getContactNumber() == customerNumber){
//                customerIterator.setContactNumber(newContactNumber)
//                break
//            }
//        }
        
        for customer in Storage.sharedInstance.getCustomerStorage(){
            if(customer.getCustomerName() == customerName && customer.getContactNumber() == customerNumber){
                customer.setContactNumber(newContactNumber)
                break
            }
        }
    }
    
    func updatePurchaseDate(CustomerName customerName: String,CustomerNumber customerNumber: String,Date newPurchaseDate: String){
//        for customerIterator in CustomerUpdaters.storeState!.getCustomerStorage(){
//            if(customerIterator.getCustomerName() == customerName && customerIterator.getContactNumber() == customerNumber){
//                customerIterator.setPurchaseDate(newPurchaseDate)
//                break
//            }
//        }
        
        for customer in Storage.sharedInstance.getCustomerStorage(){
            if(customer.getCustomerName() == customerName && customer.getContactNumber() == customerNumber){
                customer.setPurchaseDate(newPurchaseDate)
                break
            }
        }
    }
}
