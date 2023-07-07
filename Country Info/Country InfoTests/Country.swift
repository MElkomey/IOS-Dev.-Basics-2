

import Foundation

struct Country:Decodable{
    var name:Name
    var capital:[String]
    var region:String
    var population:Int
}

struct Name:Decodable{
    var common:String
}
