//
//  product.swift
//  mojtabas_sports_shop
//
//  Created by MAC on 11/4/21.
//

import Foundation


enum ProductCategory: String {
    case tshirt = "tshirt"
    case ball = "ball"
    case shoe = "shoe"
    case game = "game"
    
    func getImage() -> String {
        switch self {
        case .tshirt:
            return "tshirt"
        case .shoe:
            return "shoe"
        case .ball:
            return "ball"
        case .game:
            return "goalpost"
        }
    }
}

struct Product: Identifiable {
    let id: UUID = UUID()
    var name: String
    var category: ProductCategory = .tshirt
    var price: Int
    var image: String
}


let products: Array<Product> = [

    Product(name: "Nike 2020 TShirt", category: .tshirt, price: 1200, image: "1"),
//    Product(name: "Nike 2019 TShirt", category: .tshirt, price: 200, image: "2"),
    Product(name: "Polo 2020 TShirt", category: .tshirt, price: 2400, image: "3"),
    Product(name: "Nike 2021 TShirt", category: .tshirt, price: 1260, image: "4"),
    Product(name: "Nike Max", category: .shoe, price: 800, image: "5"),
    Product(name: "Jordans 2018", category: .shoe, price: 900, image: "6"),
    Product(name: "Jordans 2020", category: .shoe, price: 700, image: "7"),
    Product(name: "Jordans 2021", category: .shoe, price: 1900, image: "8"),
    Product(name: "Baseball", category: .ball, price: 2500, image: "9"),
//    Product(name: "Nike Basketball", category: .ball, price: 8800, image: "10"),
//    Product(name: "Bulls 2020 Basketball", category: .ball, price: 12000, image: "11"),
    Product(name: "Goya Football TShirt", category: .ball, price: 100, image: "12"),
    Product(name: "Messi 2019 ball", category: .ball, price: 200, image: "13"),
    Product(name: "Messi Handcarchief", category: .tshirt, price: 70, image: "14"),
//    Product(name: "Nike 2010 TShirt", category: .tshirt, price: 300, image: "15"),
//    Product(name: "Nike 2009 TShirt", category: .tshirt, price: 3500, image: "61"),

]
