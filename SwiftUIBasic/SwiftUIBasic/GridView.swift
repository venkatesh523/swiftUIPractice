//
//  GridView.swift
//  SwiftUIBasic
//
//  Created by Venkateshwarlu on 19/08/24.
//

import SwiftUI

struct GridView: View {
    var column: [GridItem] = [ GridItem(.fixed(50)), GridItem(.fixed(50)), GridItem(.fixed(50))]
    let data = Array(1...50)
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: self.column) {
                ForEach(data, id: \.self) { number in
                    Text("\(number)")
                        .frame(width: 50, height: 50)
                        .background(Color.orange)
                        .foregroundColor(Color.black)
                        .cornerRadius(25)
                }
            }
        }
        .padding()
    }
        /*
        Grid {
            GridRow{
                Text("Helo")
//                Image(systemName: "globe")
                ForEach(0..<2) {_ in Color.red
                }
            }
            Divider()
                .gridCellUnsizedAxes(.horizontal)
            GridRow{
                Text("Hello")
//                Image(systemName: "hand.wave")
                ForEach(0..<2) {_ in Color.blue
                }
            }
            Divider()
                .gridCellUnsizedAxes(.horizontal)
            GridRow{
                Text("Hello")
//                Image(systemName: "hand.wave")
                ForEach(0..<2) {_ in Color.black
                }
            }
        }
    }*/
}

#Preview {
    GridView()
}
