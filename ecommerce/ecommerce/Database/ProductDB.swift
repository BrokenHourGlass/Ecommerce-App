//
//  ProductDB.swift
//  ecommerce
//
//  Created by admin on 7/1/22.
//

import Foundation
import SQLite3

class ProductDB{
    static var productDb = ProductDB()
    
    var productItems = [NewProduct]()
    
    var pointer: OpaquePointer?
    
    func createDB(){
        let filePath = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("pop.sqlite")
        if sqlite3_open(filePath.path, &pointer) != SQLITE_OK{
            print("Database cannot be opened")
        }
    }
    
    let stmt1 = "create table if not exists product (id integer primary key autoincrement, name text, category text, new integer, price integer, featured integer, cartIMG text, productIMG text, description text, features text)"
    func createTable(){
        if sqlite3_exec(pointer, stmt1, nil, nil, nil) != SQLITE_OK{
            let err = String(cString: sqlite3_errmsg(pointer))
            print("error in table creation")
        }
    }
    
    func insertData(name: NSString, category: NSString, new: NSNumber, price: NSNumber, featured: NSNumber, cartIMG: NSString, productIMG: NSString, description: NSString, features: NSString){
        
        var stmt: OpaquePointer?
        let query = "insert into product (name, category, new, price, featured, cartIMG, productIMG, description, features) values (?, ?, ?, ?, ?, ?, ?, ?, ?)"
        
        if sqlite3_prepare(pointer, query, -1, &stmt, nil) != SQLITE_OK{
            let err = String(cString: sqlite3_errmsg(pointer))
            print("error in query creation", err)
        }
        
        if sqlite3_bind_text(stmt, 1, name.utf8String, -1, nil) != SQLITE_OK{
            let err = String(cString: sqlite3_errmsg(pointer))
        }
        if sqlite3_bind_text(stmt, 2, category.utf8String, -1, nil) != SQLITE_OK{
            let err = String(cString: sqlite3_errmsg(pointer))
        }
        if sqlite3_bind_int(stmt, 3, -1) != SQLITE_OK{
            let err = String(cString: sqlite3_errmsg(pointer))
        }
        if sqlite3_bind_int(stmt, 4, -1) != SQLITE_OK{
            let err = String(cString: sqlite3_errmsg(pointer))
        }
        if sqlite3_bind_int(stmt, 5, -1) != SQLITE_OK{
            let err = String(cString: sqlite3_errmsg(pointer))
        }
        if sqlite3_bind_text(stmt, 6, cartIMG.utf8String, -1, nil) != SQLITE_OK{
            let err = String(cString: sqlite3_errmsg(pointer))
        }
        if sqlite3_bind_text(stmt, 7, productIMG.utf8String, -1, nil) != SQLITE_OK{
            let err = String(cString: sqlite3_errmsg(pointer))
        }
        if sqlite3_bind_text(stmt, 8, description.utf8String, -1, nil) != SQLITE_OK{
            let err = String(cString: sqlite3_errmsg(pointer))
        }
        if sqlite3_bind_text(stmt, 9, features.utf8String, -1, nil) != SQLITE_OK{
            let err = String(cString: sqlite3_errmsg(pointer))
        }
        if sqlite3_step(stmt) != SQLITE_DONE{
            let err = String(cString: sqlite3_errmsg(pointer))
            print("error in table creation", err)
        }
    }
    
    func insertAll(){
        productItems = load("new-data.json")
        for (index, val) in productItems.enumerated(){
            insertData(name: productItems[index].name as NSString, category: productItems[index].category as NSString, new: productItems[index].new as NSNumber, price: productItems[index].price as NSNumber, featured: productItems[index].featured as NSNumber, cartIMG: productItems[index].cartIMG as NSString, productIMG: productItems[index].productIMG as NSString, description: productItems[index].description as NSString, features: productItems[index].description as NSString)
        }
    }
        
    func getData() -> [NewProduct]{
        productItems.removeAll()
        let query = "select * from product"
        var stmt : OpaquePointer?
        
        if sqlite3_prepare(pointer, query, -1, &stmt, nil) != SQLITE_OK{
            let err = String(cString: sqlite3_errmsg(pointer))
            print("error in table creation ", err)
            return productItems
        }
        
        while(sqlite3_step(stmt) == SQLITE_ROW){
            let id = sqlite3_column_int(stmt, 0)
            let name = String(cString: sqlite3_column_text(stmt, 1))
            let category = String(cString: sqlite3_column_text(stmt, 2))
            let new = sqlite3_column_int(stmt, 3)
            let price = sqlite3_column_int(stmt, 4)
            let featured = sqlite3_column_int(stmt, 5)
            let cartIMG = String(cString: sqlite3_column_text(stmt, 6))
            let productIMG = String(cString: sqlite3_column_text(stmt, 7))
            let description = String(cString: sqlite3_column_text(stmt, 8))
            let features = String(cString: sqlite3_column_text(stmt, 9))
            
            productItems.append(NewProduct(id: Int(id), name: name, category: category, new: (new != 0), price: Int(price), featured: (featured != 0), cartIMG: cartIMG, productIMG: productIMG, description: description, features: features, contents: [NewItem](), previews: [NewPreview](), recommended: [NewRecommended]()))
            }
        return productItems
    }
    func getOneRecord(id: Int) -> NewProduct{
        let query = "select * from product where id = \(id);"
        var stmt: OpaquePointer?
        var prod: NewProduct?
        
        if sqlite3_prepare(pointer, query, -1, &stmt, nil) == SQLITE_OK{
            while(sqlite3_step(stmt) == SQLITE_ROW){
                let id = sqlite3_column_int(stmt, 0)
                let name = String(cString: sqlite3_column_text(stmt, 1))
                let category = String(cString: sqlite3_column_text(stmt, 2))
                let new = sqlite3_column_int(stmt, 3)
                let price = sqlite3_column_int(stmt, 4)
                let featured = sqlite3_column_int(stmt, 5)
                let cartIMG = String(cString: sqlite3_column_text(stmt, 6))
                let productIMG = String(cString: sqlite3_column_text(stmt, 7))
                let description = String(cString: sqlite3_column_text(stmt, 8))
                let features = String(cString: sqlite3_column_text(stmt, 9))
                
                prod = NewProduct(id: Int(id), name: name, category: category, new: (new != 0), price: Int(price), featured: (featured != 0), cartIMG: cartIMG, productIMG: productIMG, description: description, features: features, contents: [NewItem](), previews: [NewPreview](), recommended: [NewRecommended]())
            }
        }
        else{
            print("error in query")
        }
        return prod ?? NewProduct(id: -1, name: "Not Valid", category: "Not Valid", new: false, price: 0, featured: false, cartIMG: "None", productIMG: "None", description: "Not Valid", features: "none", contents: [NewItem](), previews: [NewPreview](), recommended: [NewRecommended]())
    }
    /*
    func updateRecord(id: Int, alter: NewProduct){
        let name = NSString(string: alter.name)
        let category = NSString(string: alter.category)
        let new = alter.new
        let price = NSNumber(alter.price)
        let featured = alter.featured
        let cartIMG = NSString(string: alter.cartIMG)
        let productIMG = NSString(string: alter.productIMG)
        let description = NSString(string: alter.description)
        let contents = [NewItem]()
        let previews = [NewPreview]()
        let recommended = [NewRecommended]()
        let query = "update product SET name = "
    }
    */
}

/*
 struct NewProduct: Decodable, Identifiable {
     var id: Int
     var name: String
     var category: String
     var new: Bool
     var price: Int
     var featured: Bool
     var cartIMG: String
     var productIMG: String
     var description: String
     var features: String
     var contents: [NewItem]
     var previews: [NewPreview]
     var recommended: [NewRecommended]
 }*/
