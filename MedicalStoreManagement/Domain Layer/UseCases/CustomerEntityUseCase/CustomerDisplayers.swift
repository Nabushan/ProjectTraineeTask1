//
//  CustomerDisplayers.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 05/08/22.
//

import Foundation

class CustomerDisplayerUtil {
//    private static var customerEntity: CustomerEntity = CustomerEntity()
//    static var storeState: Storage?
//
//    func setAdminObject(_ customer: CustomerEntity){
//        CustomerDisplayers.customerEntity = customer
//    }
//
//    func setStorageState(_ storage: Storage){
//        CustomerDisplayers.storeState = storage
//    }
    
    func displayAllCustomerDetails(){
//        for customerIterator in CustomerDisplayers.storeState!.getCustomerStorage(){
//            customerIterator.showEntityDescription()
//        }
        
        for customer in Storage.sharedInstance.getCustomerStorage(){
            customer.showEntityDescription()
            print()
        }
    }
    
    func displayCustomerDetail(_ customerName: String){
//        for customerIterator in CustomerDisplayers.storeState!.getCustomerStorage(){
//            if(customerIterator.getCustomerName() == customerName){
//                customerIterator.showEntityDescription()
//            }
//        }
        
        for customer in Storage.sharedInstance.getCustomerStorage(){
            if(customer.getCustomerName() == customerName){
                customer.showEntityDescription()
                print()
            }
        }
    }
    
    func displayCustomerDetail(_ customerName: String,_ customerNumber: String){
//        for customerIterator in CustomerDisplayers.storeState!.getCustomerStorage(){
//            if(customerIterator.getCustomerName() == customerName && customerIterator.getContactNumber() == customerNumber){
//                customerIterator.showEntityDescription()
//                break
//            }
//        }
        
        for customer in Storage.sharedInstance.getCustomerStorage(){
            if(customer.getCustomerName() == customerName && customer.getContactNumber() == customerNumber){
                customer.showEntityDescription()
                print()
                break
            }
        }
    }
}
