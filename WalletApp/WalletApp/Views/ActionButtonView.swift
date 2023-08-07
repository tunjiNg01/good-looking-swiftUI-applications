//
//  ActionButtonView.swift
//  WalletApp
//
//  Created by MACBOOK PRO on 07/08/2023.
//

import SwiftUI

struct ActionButtonView: View {
    var body: some View {
        
        HStack{
            Text("Tap me ").font(.title2).foregroundColor(Color("pink"))
            Circle()
                .fill(Color("pink"))
                .frame(width: 40)
        }
        .padding([.trailing, .leading], 24)
        .padding([.top, .bottom], 12)
        .overlay{
            RoundedRectangle(cornerRadius: 36)
                .stroke(lineWidth: 2)
                .fill(Color("pink"))
               
        }
    }
}

struct ActionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ActionButtonView()
    }
}
