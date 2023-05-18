//
//  ContentView.swift
//  SwiftUI_test2
//
//  Created by Raman Kozar on 18/05/2023.
//

import SwiftUI

// Model for custom colors
private struct CustomColor: Identifiable {
    
    let name: String
    let color: Color
    var id: String {
        name
    }
    
}

private let customColors: [CustomColor] = [
    
    CustomColor(name: "Pink", color: .pink),
    CustomColor(name: "Green", color: .green),
    CustomColor(name: "Purple", color: .purple),
    CustomColor(name: "Blue", color: .blue)
    
]

struct ContentView: View {
    var body: some View {
        ForEach(customColors) { customColor in
            Text(customColor.name)
                .background(customColor.color)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
