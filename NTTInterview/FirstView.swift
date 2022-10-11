//
//  ContentView.swift
//  NTTInterview
//
//  Created by user228225 on 10/10/22.
//

import SwiftUI

struct FirstView: View {
    @State private var backgroundColor: Color = .white
    @State private var toggleColor: Bool = false
    @State private var nextView: Bool = false
    private var title = "Hola mundo"
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text(title)
                
                    .frame(alignment: .center)
                Spacer()
                Button {
                    if toggleColor {
                        backgroundColor = Color.red
                    } else {
                        backgroundColor = Color.yellow
                    }
                    toggleColor.toggle()
                }
                label: {
                    Text("Toggle color")
                    NavigationLink(destination: SecondView(title: title)) {
                        Text("Next view")
                    }
                }
                .frame(width: 250)
                .background(Color.orange)
                .cornerRadius(10)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(backgroundColor)
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
