//
//  Festival.swift
//  temproject
//
//  Created by seungunlee on 2023/05/24.
//

import Foundation


struct Festival : Identifiable{
    var id = UUID()
    let name: String
    let date: String
    let category : String
    let location: String
    let explanation: String
    let price : Int
}


var festivals = [
    Festival(name: "Cherry Blossom Festival", date: "April 1-10",category : "Exhibition", location: "Seoul", explanation: "Celebrate spring with the beauty of cherry blossoms. Celebrate spring with the beauty of cherry blossoms. Celebrate spring with the beauty of cherry blossoms. Celebrate spring with the beauty of cherry blossoms. Celebrate spring with the beauty of cherry blossoms. Celebrate spring with the beauty of cherry blossoms. Celebrate spring with the beauty of cherry blossoms. Celebrate spring with the beauty of cherry blossoms. Celebrate spring with the beauty of cherry blossoms. Celebrate spring with the beauty of cherry blossoms. Celebrate spring with the beauty of cherry blossoms." , price : 10000),
    Festival(name: "Lantern Festival", date: "May 15-20", category : "Exhibition", location: "Busan", explanation: "Experience the colorful lantern parade and cultural performances.", price : 12000),
    Festival(name: "Fireworks Festival", date: "July 1-5", category : "Exhibition", location: "Incheon", explanation: "Enjoy the spectacular fireworks show and beach parties.", price : 9000),
    Festival(name: "Rock Festival", date: "July 20-25", category : "Exhibition", location: "Incheon", explanation: "Enjoy the spectacular fireworks show and beach parties.", price :   17000)
]
