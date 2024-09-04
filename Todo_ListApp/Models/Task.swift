//
//  Task.swift
//  Todo_ListApp
//
//  Created by Kemal Kazanc on 03/09/2024.
//

import Foundation

struct Task: Identifiable{
    let id = UUID()
    let title : String
    let priority : Int
}
