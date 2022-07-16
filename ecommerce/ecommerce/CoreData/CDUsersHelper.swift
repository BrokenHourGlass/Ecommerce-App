//
//  CDUsersHelper.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/15/22.
//

import Foundation
import UIKit
import CoreData

class CDUsersHelper {
    
    static var cdUsersHelper = CDUsersHelper()
    
    let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
    
    func addNewUser(userObj: UserModel) {
        
        let userEntity = NSEntityDescription.insertNewObject(forEntityName: "PNPUser", into: context!) as! PNPUser
        
        userEntity.userId = userObj.userId
        userEntity.firstname = userObj.firstname
        userEntity.lastname = userObj.lastname
        userEntity.email = userObj.email
        userEntity.password = userObj.password
        userEntity.mobileNumber = userObj.mobileNumber
        
        do {
            try context?.save()
            print("data saved successfully")
        } catch {
            print("data save unsuccessful")
            print(error.localizedDescription)
        }
    }
    
    func getUser(userId: String) throws -> UserModel {
        var user = UserModel(userId: "", firstname: "", lastname: "", email: "", password: "", mobileNumber: "")
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "PNPUser")
        fetchRequest.predicate = NSPredicate(format: "userId == %@", userId)
        
        fetchRequest.fetchLimit = 1
        let request = try context?.fetch(fetchRequest) as! [PNPUser]
        if (request.count != 0) {
            let result = request.first!
            user = UserModel(userId: result.userId!, firstname: result.firstname!, lastname: result.lastname!, email: result.email!, password: result.password!, mobileNumber: result.mobileNumber!)
            //            DBHelperClass.flag = true
            print("data retrieval successful")
        } else {
            //            DBHelperClass.flag = false
            //            throw LoginErrors.userNotFound
            print("data retrieval unsuccessful")
        }
        
        return user
    }
    
}
