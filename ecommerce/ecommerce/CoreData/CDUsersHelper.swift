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
    
    func getData() -> [PNPUser]{
        
        
        var pnpuser = [PNPUser]()
        
        var fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "PNPUser")
        
        do{
            pnpuser = try context?.fetch(fetchRequest) as! [PNPUser]
        } catch{
            print("could not fetch data")
        }
        
        return pnpuser
    }
    
    func isUserRegistered(email: String) -> Bool{
        var isUserCreated = false
        
        var pnpuser = PNPUser()
        var fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "PNPUser")
        fetchRequest.predicate = NSPredicate(format: "email ==%@", email)
        fetchRequest.fetchLimit = 1
        
        do{
            let request = try context?.fetch(fetchRequest) as! [PNPUser]
            if request.count != 0{
                isUserCreated = true
                pnpuser = request.first as! PNPUser
            } else{
                isUserCreated = false
                print("erro: no user found")
            }
            
        } catch{
            print("ERror: no user found")
        }
        return isUserCreated
        
    }
    
    func getOne(email: String) -> PNPUser{
        var pnpuser = PNPUser()
        let fetchrequest = NSFetchRequest<NSFetchRequestResult>(entityName: "PNPUser")
        fetchrequest.predicate = NSPredicate(format: "email == %@", email)
        fetchrequest.fetchLimit = 1
        
        do{
            let request = try context?.fetch(fetchrequest) as! [PNPUser]
            if request.count != 0 {
                pnpuser = request.first as! PNPUser
            } else{
                print("error: no user found")
                return pnpuser
            }
            
        } catch{
            print("error")
        }
        return pnpuser
        
        
    }
    
    
    
}
