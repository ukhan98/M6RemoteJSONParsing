//
//  ListDataView.swift
//  M6RemoteJSONParsing
//
//  Created by mac owner on 2020-12-10.
//

import SwiftUI

struct PersonRow : View {
    var person : People
    
    var body : some View {
        VStack{
            Text("Name: \(person.Name)").font(.headline).foregroundColor(.black).multilineTextAlignment(.leading).frame(width: 300, height: 30, alignment: .leading)
            Text("Address: \(person.Address)").font(.subheadline).foregroundColor(.blue).multilineTextAlignment(.leading).frame(width: 300, height: 30, alignment: .leading)
            Text("Email: \(person.Email)").font(.subheadline).foregroundColor(.green).multilineTextAlignment(.leading).frame(width: 300, height: 30, alignment: .leading)
            Text("Salary: \(person.Salary)").font(.headline).foregroundColor(.black).multilineTextAlignment(.leading).frame(width: 300, height: 30, alignment: .leading)


        }
    }
}


struct ListDataView: View {
    @ObservedObject  var fetch = GetData()
    
    
    
    var body: some View {
        List{
            ForEach(fetch.people, id: \.self){ p in 
                PersonRow(person: p)
            }
        }
    }
    }

