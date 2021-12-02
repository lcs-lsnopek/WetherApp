//
//  ContentView.swift
//  WetherApp
//
//  Created by Logan Snopek on 2021-12-01.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Stoed proprots

    @State var DFarenhingt: Double = 32
    
    //MARK: Computed prorotes
    
    var convertion: Double {
        return ((DFarenhingt - 32) * 5) / 9
    }
    
    
    var body: some View {
        VStack{
            
            
            Text("Degres in Farenht")
            
            
            HStack {
                Spacer()
                Text("\(String(format: "%.1f", DFarenhingt))")
                    .font(.title2)
                Spacer()
            }
            
                
            Slider(value: $DFarenhingt,
                   in: 0.0...100.0,
                   label: {
                        Text("Opacity")
            },
                   minimumValueLabel: {
                        Text("0")
            },
                   maximumValueLabel: {
                        Text("100")
            })
                .padding()
            
            
            HStack {
                Spacer()
                Text("\(String(format: "%.1f", convertion))")
                    .font(.title2)
                Spacer()
            }
            
            Text("Temprater in Celcus\(convertion)")
            
            
            Spacer()
            
        }
        .navigationTitle("Wether")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        ContentView()
        }
    }
}
