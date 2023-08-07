//
//  TransactionViews.swift
//  WalletApp
//
//  Created by MACBOOK PRO on 07/08/2023.
//

import SwiftUI

struct TransactionViews: View {
    var body: some View {
        ZStack(){
            VStack(alignment: .leading){
               RoundedRectangle(cornerRadius: 4)
                    .fill(Color("blue"))
                    .frame(height: 300)
                    .overlay{
                        Image("card")
                             .resizable()
                             .scaledToFit()
                             
                    }
                    
                Spacer()
                
                Text("Recent Transaction")
                    .font(.title2)
                    .foregroundColor(.white)
               
                TransactionRow()
                TransactionRow()
                TransactionRow()
                TransactionRow()
                
            }
            .padding([.leading, .trailing], 18)
        }.background(Color("blue"))
    

    }
}

struct TransactionViews_Previews: PreviewProvider {
    static var previews: some View {
        TransactionViews()
    }
}
