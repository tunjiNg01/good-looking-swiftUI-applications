//
//  CardStack.swift
//  WalletApp
//
//  Created by MACBOOK PRO on 27/07/2023.
//

import SwiftUI

struct CardStack: View {
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 64)
                .fill(Color("pink"))
                .frame(height: 80)
                
                .overlay{
                    HStack(alignment: .top) {
                Image(systemName: "creditcard.fill")
                            .foregroundColor(Color("blue"))
                Spacer()
                Text("***1234")
                            .font(.headline)
                            .foregroundColor(Color("blue"))
            }.padding(36)
                    
        }.offset(y:40)
            
            RoundedRectangle(cornerRadius: 96)
                .fill(Color("blue"))
                .frame(height: 80)
                
                .overlay{
                    HStack(alignment: .top) {
                Image(systemName: "creditcard.fill")
                            .foregroundColor(.white)
                Spacer()
                Text("***1234")
                            .font(.headline)
                            .foregroundColor(.white)
            }.padding(36)
                    
        }
                .offset(y:20)
            
            RoundedRectangle(cornerRadius: 96)
                .fill(Color("lightblue"))
                .frame(height: 80)
                
                .overlay{
                    HStack(alignment: .top) {
                Image(systemName: "creditcard.fill")
                            .foregroundColor(.white)
                Spacer()
                Text("***1234")
                            .font(.headline)
                            .foregroundColor(.white)
            }.padding(36)
                    
        }
            
           
            
        }
    }
}

struct CardStack_Previews: PreviewProvider {
    static var previews: some View {
        CardStack()
    }
}
