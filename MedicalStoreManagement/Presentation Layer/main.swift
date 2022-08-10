//
//  main.swift
//  MedicalStoreManagement
//
//  Created by nabushan-pt5611 on 03/08/22.
//

import Foundation

// ADMIN CHECK :-
//var storage: Storage = Storage()
//var admin: Admin = Admin()
//admin.setStorageState(storage)
//
//admin.setAdminDetails()
//print(admin.validateAdmin())
//admin.updateAdminPassword()
//print(admin.validateAdmin())
//
//storage.displayAdmins()


// MEDICINE CHECK :-
//var medicine: MedicineManager = MedicineManager()
////medicine.setStorageState(storage)
//
//medicine.addMedicine()
//medicine.addMedicine()
//medicine.displayMedicine()
//
//medicine.updateMedicine()
//
//medicine.displayMedicine()
//medicine.removeMedicine()
//medicine.displayMedicine()

// COMPANY CHECK :-
//var storage: Storage = Storage()
//var company: Company = Company()
//company.setStorageState(storage)
//
//company.addCompany()
//company.addCompany()
//company.displayCompany()
//
//company.updateCompany()
//
//company.displayCompany()
//company.removeCompany()
//company.displayCompany()


// CATEGORY CHECK :-
//var storage: Storage = Storage()
//var category: Category = Category()
//category.setStorageState(storage)
//
//category.addCategory()
//category.addCategory()
//category.displayCategory()
//
//category.updateCategory()
//
//category.displayCategory()
//category.removeCategory()
//category.displayCategory()

// CUSTOMER CHECK :-
//var storage: Storage = Storage()
//var customer: Customer = Customer()
//customer.setStorageState(storage)
//
//customer.addCustomer()
//customer.addCustomer()
//customer.displayCustomer()
//
//customer.updateCustomer()
//
//customer.displayCustomer()
//customer.removeCustomer()
//customer.displayCustomer()

// Checking isDateValid,isMobileNumberValid and isPasswordvalid functions
//do{
//    print("Output of isDateValid(2023-05-04) : ",try Checkers.isDateValid("2023-05-04"))
//    print("Output of isDateValid(2021-05-04) : ",try Checkers.isDateValid("2021-05-04"))
//}
//catch Checkers.Date.UnformattedDate{
//    print("The entered date is Unformatted.")
//}
//catch Checkers.Date.IllegalMonth{
//    print("Entered Month value is out of bounds.")
//}
//catch Checkers.Date.IllegalDate{
//    print("Entered Date value is out of bounds.")
//}
//catch Checkers.Date.AlreadyExpired{
//    print("Entered Date is already Expired.")
//}
//print("Output of isPasswordValid(Yel14) : ",Validator.isPasswordValid("Yel14"))
//print("Output of isPasswordValid(Yellow@) : ",Validator.isPasswordValid("Yellow@"))
//print("Output of isPasswordValid(yEllow@1412) : ",Validator.isPasswordValid("yEllow@1412"))
//print("Output of isPasswordValid(YELLOW@1412) : ",Validator.isPasswordValid("YELLOW@1412"))
//
//print("Output of isMobileNumberValid(9442846371) : ",Validator.isMobileNumberValid("9442846371"))
//print("Output of isMobileNumberValid(944284637) : ",Validator.isMobileNumberValid("944284637"))
//print("Output of isMobileNumberValid(1) : ",Validator.isMobileNumberValid("1"))

// CUSTOMERS CHECK :-
//var customers: Customer = Customer()
//
//customers.addCustomer()
//customers.addCustomer()
//
//customers.displayCustomer()
//
//customers.removeCustomer()
//
//customers.displayCustomer()

// TODO :-
// Add default Medicine and Category values into its respective array using loader methods.

// SALES RECORD CHECK :-
//var medicine: MedicineManager = MedicineManager()
//medicine.addMedicine()
//medicine.addMedicine()
//var salesRecord: SalesRecordManager = SalesRecordManager()
//salesRecord.addSalesRecord()
//salesRecord.addSalesRecord()
//salesRecord.displaySalesRecords()
//salesRecord.updateSalesRecord()
//salesRecord.displaySalesRecords()
//salesRecord.removeSalesRecord()
//salesRecord.displaySalesRecords()


// ADMIN CHECKERS :-
//var admin: AdminManager = AdminManager()
//
//admin.addAdminDetails()
//admin.displayAdmins()
//
//admin.addAdminDetails()
//admin.displayAdmins()
//
//admin.updateAdminPassword()
//admin.displayAdmins()
//
//print(admin.validateAdmin())

// STORE INCHARGE CHECKERS :-
//var storeIncharge: StoreInchargeManager = StoreInchargeManager()
//
//storeIncharge.showMedicineAvailability()
//storeIncharge.showCategoryAvailability()
//
//storeIncharge.addSalesEntry()
//
//storeIncharge.updateSalesEntry()


// NOTE :-
// We can create medicineManager object for the protocol it conforms.
//var temp: MedicineHelperProtocol = MedicineManager()

// MEDICAL STORE CHECK :-
var medicalStore: MedicalStore = MedicalStore()
medicalStore.access()
