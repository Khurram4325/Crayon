//
//  CrayonModel.swift
//  Crayon
//
//  Created by Khurram Shahzad on 15/04/2020.
//  Copyright © 2020 Khurram Shahzad. All rights reserved.
//

import UIKit
import Foundation

// Dictionary of crayon names and colors
let crayonDictionary = ["Sepia": #colorLiteral(red: 0.6171875, green: 0.35546875, blue: 0.25, alpha: 1.0),
                        "Beaver": #colorLiteral(red: 0.5703125, green: 0.43359375, blue: 0.35546875, alpha: 1.0),
                        "Caribbean Green": #colorLiteral(red: 0.0, green: 0.796875, blue: 0.59765625, alpha: 1.0),
                        "Electric Lime": #colorLiteral(red: 0.796875, green: 0.99609375, blue: 0.0, alpha: 1.0),
                        "Gray": #colorLiteral(red: 0.54296875, green: 0.5234375, blue: 0.5, alpha: 1.0),
                        "Pacific Blue": #colorLiteral(red: 0.0, green: 0.61328125, blue: 0.765625, alpha: 1.0),
                        "Burnt Sienna": #colorLiteral(red: 0.91015625, green: 0.453125, blue: 0.31640625, alpha: 1.0),
                        "Manatee": #colorLiteral(red: 0.55078125, green: 0.5625, blue: 0.62890625, alpha: 1.0),
                        "Screamin' Green": #colorLiteral(red: 0.3984375, green: 0.99609375, blue: 0.3984375, alpha: 1.0),
                        "Granny Smith Apple": #colorLiteral(red: 0.61328125, green: 0.875, blue: 0.57421875, alpha: 1.0),
                        "Atomic Tangerine": #colorLiteral(red: 0.99609375, green: 0.59765625, blue: 0.3984375, alpha: 1.0),
                        "Cotton Candy": #colorLiteral(red: 0.99609375, green: 0.71484375, blue: 0.83203125, alpha: 1.0),
                        "Razzmatazz": #colorLiteral(red: 0.88671875, green: 0.04296875, blue: 0.359375, alpha: 1.0),
                        "Tumbleweed": #colorLiteral(red: 0.8671875, green: 0.6484375, blue: 0.50390625, alpha: 1.0),
                        "Macaroni And Cheese": #colorLiteral(red: 0.99609375, green: 0.72265625, blue: 0.48046875, alpha: 1.0),
                        "Vivid Tangerine": #colorLiteral(red: 0.99609375, green: 0.59765625, blue: 0.5, alpha: 1.0),
                        "Cornflower": #colorLiteral(red: 0.57421875, green: 0.796875, blue: 0.9140625, alpha: 1.0),
                        "Outer Space": #colorLiteral(red: 0.17578125, green: 0.21875, blue: 0.2265625, alpha: 1.0),
                        "Fern": #colorLiteral(red: 0.38671875, green: 0.71484375, blue: 0.421875, alpha: 1.0),
                        "Silver": #colorLiteral(red: 0.78515625, green: 0.75, blue: 0.73046875, alpha: 1.0),
                        "Olive Green": #colorLiteral(red: 0.70703125, green: 0.69921875, blue: 0.359375, alpha: 1.0),
                        "Mahogany": #colorLiteral(red: 0.7890625, green: 0.203125, blue: 0.20703125, alpha: 1.0),
                        "Red Violet": #colorLiteral(red: 0.73046875, green: 0.19921875, blue: 0.51953125, alpha: 1.0),
                        "Purple Heart": #colorLiteral(red: 0.39453125, green: 0.17578125, blue: 0.75390625, alpha: 1.0),
                        "Cadet Blue": #colorLiteral(red: 0.66015625, green: 0.6953125, blue: 0.76171875, alpha: 1.0),
                        "Fuchsia": #colorLiteral(red: 0.75390625, green: 0.328125, blue: 0.75390625, alpha: 1.0),
                        "Blue Green": #colorLiteral(red: 0.0, green: 0.58203125, blue: 0.7109375, alpha: 1.0),
                        "Maroon": #colorLiteral(red: 0.76171875, green: 0.12890625, blue: 0.28125, alpha: 1.0),
                        "Timberwolf": #colorLiteral(red: 0.84765625, green: 0.8359375, blue: 0.80859375, alpha: 1.0),
                        "Yellow Green": #colorLiteral(red: 0.76953125, green: 0.87890625, blue: 0.4765625, alpha: 1.0),
                        "Magic Mint": #colorLiteral(red: 0.6640625, green: 0.9375, blue: 0.81640625, alpha: 1.0),
                        "Jazzberry Jam": #colorLiteral(red: 0.64453125, green: 0.04296875, blue: 0.3671875, alpha: 1.0),
                        "Laser Lemon": #colorLiteral(red: 0.99609375, green: 0.99609375, blue: 0.3984375, alpha: 1.0),
                        "Gold": #colorLiteral(red: 0.8984375, green: 0.7421875, blue: 0.5390625, alpha: 1.0),
                        "Blue Violet": #colorLiteral(red: 0.390625, green: 0.3359375, blue: 0.71484375, alpha: 1.0),
                        "Cranberry": #colorLiteral(red: 0.85546875, green: 0.3125, blue: 0.47265625, alpha: 1.0),
                        "Neon Carrot": #colorLiteral(red: 0.99609375, green: 0.59765625, blue: 0.19921875, alpha: 1.0),
                        "Mulberry": #colorLiteral(red: 0.76953125, green: 0.29296875, blue: 0.546875, alpha: 1.0),
                        "Raw Sienna": #colorLiteral(red: 0.8203125, green: 0.48828125, blue: 0.2734375, alpha: 1.0),
                        "Orange": #colorLiteral(red: 0.99609375, green: 0.40625, blue: 0.12109375, alpha: 1.0),
                        "Pine Green": #colorLiteral(red: 0.00390625, green: 0.47265625, blue: 0.43359375, alpha: 1.0),
                        "Denim": #colorLiteral(red: 0.08203125, green: 0.375, blue: 0.73828125, alpha: 1.0),
                        "Ultra Red": #colorLiteral(red: 0.98828125, green: 0.35546875, blue: 0.46875, alpha: 1.0),
                        "Chestnut": #colorLiteral(red: 0.72265625, green: 0.3046875, blue: 0.28125, alpha: 1.0),
                        "Midnight Blue": #colorLiteral(red: 0.0, green: 0.19921875, blue: 0.3984375, alpha: 1.0),
                        "Pink Flamingo": #colorLiteral(red: 0.99609375, green: 0.3984375, blue: 0.99609375, alpha: 1.0),
                        "Shocking Pink": #colorLiteral(red: 0.99609375, green: 0.43359375, blue: 0.99609375, alpha: 1.0),
                        "Shadow": #colorLiteral(red: 0.51171875, green: 0.4375, blue: 0.3125, alpha: 1.0),
                        "Sunglow": #colorLiteral(red: 0.99609375, green: 0.796875, blue: 0.19921875, alpha: 1.0),
                        "Vivid Violet": #colorLiteral(red: 0.5, green: 0.21484375, blue: 0.5625, alpha: 1.0),
                        "Tan": #colorLiteral(red: 0.9765625, green: 0.61328125, blue: 0.3515625, alpha: 1.0),
                        "Brick Red": #colorLiteral(red: 0.7734375, green: 0.17578125, blue: 0.2578125, alpha: 1.0),
                        "Copper": #colorLiteral(red: 0.8515625, green: 0.5390625, blue: 0.40234375, alpha: 1.0),
                        "Indigo": #colorLiteral(red: 0.30859375, green: 0.41015625, blue: 0.7734375, alpha: 1.0),
                        "Asparagus": #colorLiteral(red: 0.48046875, green: 0.625, blue: 0.35546875, alpha: 1.0),
                        "Red": #colorLiteral(red: 0.92578125, green: 0.0390625, blue: 0.24609375, alpha: 1.0),
                        "Turquoise Blue": #colorLiteral(red: 0.421875, green: 0.8515625, blue: 0.90234375, alpha: 1.0),
                        "Navy Blue": #colorLiteral(red: 0.0, green: 0.3984375, blue: 0.796875, alpha: 1.0),
                        "Radical Red": #colorLiteral(red: 0.99609375, green: 0.20703125, blue: 0.3671875, alpha: 1.0),
                        "Magenta": #colorLiteral(red: 0.9609375, green: 0.32421875, blue: 0.6484375, alpha: 1.0),
                        "Mango Tango": #colorLiteral(red: 0.90234375, green: 0.4453125, blue: 0.0, alpha: 1.0),
                        "Wisteria": #colorLiteral(red: 0.78515625, green: 0.625, blue: 0.859375, alpha: 1.0),
                        "Green Yellow": #colorLiteral(red: 0.94140625, green: 0.90234375, blue: 0.53125, alpha: 1.0),
                        "Violet (Purple)": #colorLiteral(red: 0.51171875, green: 0.34765625, blue: 0.63671875, alpha: 1.0),
                        "Blue": #colorLiteral(red: 0.0, green: 0.3984375, blue: 0.99609375, alpha: 1.0),
                        "Plum": #colorLiteral(red: 0.515625, green: 0.19140625, blue: 0.47265625, alpha: 1.0),
                        "Tropical Rain Forest": #colorLiteral(red: 0.0, green: 0.45703125, blue: 0.3671875, alpha: 1.0),
                        "Periwinkle": #colorLiteral(red: 0.76171875, green: 0.80078125, blue: 0.8984375, alpha: 1.0),
                        "Melon": #colorLiteral(red: 0.9921875, green: 0.7265625, blue: 0.67578125, alpha: 1.0),
                        "Brink Pink": #colorLiteral(red: 0.98046875, green: 0.375, blue: 0.49609375, alpha: 1.0),
                        "Inch Worm": #colorLiteral(red: 0.6875, green: 0.88671875, blue: 0.07421875, alpha: 1.0),
                        "Antique Brass": #colorLiteral(red: 0.78125, green: 0.5390625, blue: 0.39453125, alpha: 1.0),
                        "Mauvelous": #colorLiteral(red: 0.9375, green: 0.56640625, blue: 0.66015625, alpha: 1.0),
                        "Robin's Egg Blue": #colorLiteral(red: 0.0, green: 0.796875, blue: 0.796875, alpha: 1.0),
                        "Yellow Orange": #colorLiteral(red: 0.99609375, green: 0.6796875, blue: 0.2578125, alpha: 1.0),
                        "Fuzzy Wuzzy Brown": #colorLiteral(red: 0.765625, green: 0.3359375, blue: 0.33203125, alpha: 1.0),
                        "Sunset Orange": #colorLiteral(red: 0.9921875, green: 0.296875, blue: 0.25, alpha: 1.0),
                        "Mountain Meadow": #colorLiteral(red: 0.1015625, green: 0.69921875, blue: 0.51953125, alpha: 1.0),
                        "Desert Sand": #colorLiteral(red: 0.92578125, green: 0.78515625, blue: 0.68359375, alpha: 1.0),
                        "Tickle Me Pink": #colorLiteral(red: 0.984375, green: 0.5, blue: 0.64453125, alpha: 1.0),
                        "Canary": #colorLiteral(red: 0.99609375, green: 0.99609375, blue: 0.59765625, alpha: 1.0),
                        "Happy Ever After": #colorLiteral(red: 0.421875, green: 0.8515625, blue: 0.21484375, alpha: 1.0),
                        "Scarlet": #colorLiteral(red: 0.98828125, green: 0.0546875, blue: 0.20703125, alpha: 1.0),
                        "Sea Green": #colorLiteral(red: 0.57421875, green: 0.87109375, blue: 0.71875, alpha: 1.0),
                        "Dandelion": #colorLiteral(red: 0.9921875, green: 0.84375, blue: 0.36328125, alpha: 1.0),
                        "Orchid": #colorLiteral(red: 0.8828125, green: 0.609375, blue: 0.8203125, alpha: 1.0),
                        "Hot Magenta": #colorLiteral(red: 0.99609375, green: 0.0, blue: 0.796875, alpha: 1.0),
                        "Goldenrod": #colorLiteral(red: 0.984375, green: 0.8359375, blue: 0.40234375, alpha: 1.0),
                        "Razzle Dazzle Rose": #colorLiteral(red: 0.99609375, green: 0.19921875, blue: 0.796875, alpha: 1.0),
                        "Brown": #colorLiteral(red: 0.68359375, green: 0.34765625, blue: 0.2421875, alpha: 1.0),
                        "Forest Green": #colorLiteral(red: 0.37109375, green: 0.65234375, blue: 0.46484375, alpha: 1.0),
                        "Banana Mania": #colorLiteral(red: 0.98046875, green: 0.90234375, blue: 0.6953125, alpha: 1.0),
                        "Aquamarine": #colorLiteral(red: 0.44140625, green: 0.84765625, blue: 0.8828125, alpha: 1.0),
                        "Spring Green": #colorLiteral(red: 0.921875, green: 0.91796875, blue: 0.73828125, alpha: 1.0),
                        "White": #colorLiteral(red: 0.99609375, green: 0.99609375, blue: 0.99609375, alpha: 1.0),
                        "Lavender": #colorLiteral(red: 0.98046875, green: 0.6796875, blue: 0.8203125, alpha: 1.0),
                        "Burnt Orange": #colorLiteral(red: 0.99609375, green: 0.4375, blue: 0.203125, alpha: 1.0),
                        "Red Orange": #colorLiteral(red: 0.99609375, green: 0.24609375, blue: 0.203125, alpha: 1.0),
                        "Royal Purple": #colorLiteral(red: 0.41796875, green: 0.24609375, blue: 0.625, alpha: 1.0),
                        "Jungle Green": #colorLiteral(red: 0.16015625, green: 0.66796875, blue: 0.52734375, alpha: 1.0),
                        "Almond": #colorLiteral(red: 0.9296875, green: 0.84765625, blue: 0.765625, alpha: 1.0),
                        "Black": #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0),
                        "Purple Mountain's Majesty": #colorLiteral(red: 0.5859375, green: 0.46875, blue: 0.7109375, alpha: 1.0),
                        "Wild Blue Yonder": #colorLiteral(red: 0.4765625, green: 0.53515625, blue: 0.71875, alpha: 1.0),
                        "Violet Red": #colorLiteral(red: 0.96484375, green: 0.2734375, blue: 0.5390625, alpha: 1.0),
                        "Bittersweet": #colorLiteral(red: 0.9921875, green: 0.43359375, blue: 0.3671875, alpha: 1.0),
                        "Carnation Pink": #colorLiteral(red: 0.99609375, green: 0.6484375, blue: 0.78515625, alpha: 1.0),
                        "Sky Blue": #colorLiteral(red: 0.4609375, green: 0.83984375, blue: 0.9140625, alpha: 1.0),
                        "Outrageous Orange": #colorLiteral(red: 0.99609375, green: 0.375, blue: 0.21484375, alpha: 1.0),
                        "Green": #colorLiteral(red: 0.00390625, green: 0.63671875, blue: 0.40625, alpha: 1.0),
                        "Salmon": #colorLiteral(red: 0.99609375, green: 0.56640625, blue: 0.640625, alpha: 1.0),
                        "Blizzard Blue": #colorLiteral(red: 0.63671875, green: 0.88671875, blue: 0.92578125, alpha: 1.0),
                        "Wild Strawberry": #colorLiteral(red: 0.99609375, green: 0.19921875, blue: 0.59765625, alpha: 1.0),
                        "Pig Pink": #colorLiteral(red: 0.98828125, green: 0.83984375, blue: 0.890625, alpha: 1.0),
                        "Blue Bell": #colorLiteral(red: 0.59765625, green: 0.59765625, blue: 0.796875, alpha: 1.0),
                        "Cerise": #colorLiteral(red: 0.8515625, green: 0.1953125, blue: 0.52734375, alpha: 1.0),
                        "Shamrock": #colorLiteral(red: 0.19921875, green: 0.796875, blue: 0.59765625, alpha: 1.0),
                        "Yellow": #colorLiteral(red: 0.98046875, green: 0.90625, blue: 0.4375, alpha: 1.0),
                        "Apricot": #colorLiteral(red: 0.98828125, green: 0.83203125, blue: 0.69140625, alpha: 1.0),
                        "Cerulean": #colorLiteral(red: 0.0078125, green: 0.640625, blue: 0.82421875, alpha: 1.0),
                        "Eggplant": #colorLiteral(red: 0.37890625, green: 0.25, blue: 0.31640625, alpha: 1.0),
]

class CrayonHelper {
    static let shared = CrayonHelper()
    
    // Group color names by letter
    private var sectionDictionary: [String: [String]] = [:]
    
    // Sorted collection of color letter indices
    private var sectionKeys: [String] = []
    
    // Stored crayons
    private var crayons: [String: Crayon] = [:]
    
    // Model setup
    private init() {
        for (name, color) in crayonDictionary {
            let first = String(name.uppercased()[name.startIndex])
            sectionDictionary[first] = sectionDictionary[first, default: []] + [name]
            let crayon = Crayon(name: name, color: color, image: UIImage(named: name)!)
            crayons[name] = crayon
        }
        sectionKeys = Array(sectionDictionary.keys).sorted()
    }
    
    // Number of sections
    var sectionCount: Int {
        return sectionDictionary.keys.count
    }
    
    // Section name lookup
    func sectionNameFor(indexPath: IndexPath) -> String {
        return sectionKeys[indexPath.section]
    }
    
    // Section title
    func sectionTitles() -> [String] {
        return sectionKeys
    }
    
    // Section row count
    func rowCountFor(section: Int) -> Int {
        guard section >= 0, section < sectionDictionary.keys.count else {
            fatalError("Invalid section number")
        }
        let key = sectionKeys[section]
        return sectionDictionary[key]?.count ?? 0
    }
    
    // Retrieve a crayon record
    func crayonFor(indexPath: IndexPath) -> Crayon {
        let key = sectionNameFor(indexPath: indexPath)
        let values = sectionDictionary[key] ?? []
        let colorName = values[indexPath.row]
        return crayons[colorName]!
    }
}
