//
//  ListView.swift
//  SwiftUIBasic
//
//  Created by Venkateshwarlu on 19/08/24.
//

import SwiftUI

struct ListView: View {
    @State var nameData  = [nameObject(titile: "Thulasiram"),
                            nameObject(titile: "Ram"),
                            nameObject(titile: "Thulasi")]

    var body: some View {
        /* ---- Basic list view*/
        /*
         List(0..<10) {
         item in
         Text("row: \(item)")
         }
         VStack {
         List(nameData) { item in
         Text("\(item.titile)")
         }
         Button("add new item") {
         nameData.append(nameObject(titile: "B Reddy"))
         }.buttonStyle(.borderedProminent)
         } */
        //for each && swipe to delete
            List{
                ForEach(nameData) { datum in
                    NavigationLink(destination: GridView()){
                        Text(datum.titile)
                    }
                }.onDelete(perform: deleteItems)
                HStack {
                    Button{
                        nameData.append(nameObject(titile: "B"))
                    } label: {
                        Text("")
                    }
                }.padding()
            }
      
        //sections
        /*
         VStack(content: {
         List{
         Section{
         ForEach(nameData) { datum in
         Text(datum.titile)
         }
         } header: {
         Text("section 1")
         }
         Section{
         ForEach(nameData) { datum in
         Text(datum.titile)
         }
         } header: {
         Text("section 2")
         }
         }
         }) */
        
    }
    func deleteItems(at offsets: IndexSet) {
        nameData.remove(atOffsets: offsets)
    }
}

#Preview {
    ListView()
}
struct nameObject: Identifiable {
    let id = UUID()
    let titile: String
}
