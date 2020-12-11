//
//  GetData.swift
//  M6RemoteJSONParsing
//
//  Created by mac owner on 2020-12-10.
//

import SwiftUI

public struct People : Codable, Hashable {
    
    public var ID: String
    public var Name: String
    public var Email: String
    public var Address: String
    public var Salary: String
    
    public func hash(into hasher: inout Hasher){
        hasher.combine(Name)
    }
}


class GetData: ObservableObject {
    
    @Published var people = [People]()
    
    init() {
        let url = URL(string: "http://sheikhj.dev.fast.sheridanc.on.ca/prog39856/sqlToJson.php")!
    
   
    URLSession.shared.dataTask(with: url){
        (data, response, error) in
        
        do{
            if let peopleData = data {
              let decodedData = try  JSONDecoder().decode([People].self, from: peopleData)
                DispatchQueue.main.async {
                    print(decodedData)
                    self.people = decodedData
                }
            }
        }catch{
                print("error: \(error)")
            }
    }.resume()
    }

}
