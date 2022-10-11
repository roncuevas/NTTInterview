//
//  SecondView.swift
//  NTTInterview
//
//  Created by user228225 on 10/10/22.
//

import SwiftUI

struct SecondView: View {
    
    var title: String
    
    var body: some View {
        VStack{
            Text(title)
                .padding(.init(top: 20, leading: 20, bottom: 0, trailing: 20))
            Spacer()
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(title: "Hola mundo")
    }
}
