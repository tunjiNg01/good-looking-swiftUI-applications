//
//  TransactionRow.swift
//  WalletApp
//
//  Created by MACBOOK PRO on 07/08/2023.
//

import SwiftUI

struct TransactionRow: View {
    let transaction: Transactions
    var body: some View {
        VStack(alignment: .leading, spacing: 12){
            HStack(alignment: .firstTextBaseline){
                if transaction.type == "credit"{
                Image(systemName: "arrowtriangle.down.fill")
                    .foregroundColor(.green)
                    
                }else{
                    Image(systemName: "arrowtriangle.down.fill")
                        .foregroundColor(.red)
                }
                Text(transaction.name)
                    .font(.headline)
                    .foregroundColor(.white)
                Spacer()
                Text(transaction.amount.setFormater())
                    .font(.headline)
                    .foregroundColor(.white)
            }
            Text(transaction.address)
                .font(.subheadline)
                .foregroundColor(.white)
        }.padding(24)
        .background(Color("blue"))
        .overlay{
            RoundedRectangle(cornerRadius: 16)
                .fill(.white.opacity(0.1))
        }
    }
}

struct TransactionRow_Previews: PreviewProvider {
    static var previews: some View {
        TransactionRow(transaction: .previewData[0])
    }
}


