//
//  NoteModel.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/11/22.
//

import Foundation

class NoteModel {
    var username: String
    var title: String
    var body: String
    
    init(username: String, title: String, body: String) {
        self.username = username
        self.title = title
        self.body = body
    }
    
    static func fetchNotes() -> [NoteModel] {
        return [
            NoteModel(username: "name", title: "title", body: "body"),
            NoteModel(username: "name", title: "title", body: "body"),
            NoteModel(username: "name", title: "title", body: "body"),
            NoteModel(username: "name", title: "title", body: "body"),
            NoteModel(username: "name", title: "title", body: "body"),
            NoteModel(username: "name", title: "title", body: "body"),
            NoteModel(username: "name", title: "title", body: "body"),
            NoteModel(username: "name", title: "title", body: "body"),
            NoteModel(username: "name", title: "title", body: "body"),
            NoteModel(username: "name", title: "title", body: "body"),
            NoteModel(username: "name", title: "title", body: "body"),
        ]
    }
}
