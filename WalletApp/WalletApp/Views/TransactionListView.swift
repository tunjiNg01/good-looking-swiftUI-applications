//
//  TransactionListView.swift
//  WalletApp
//
//  Created by MACBOOK PRO on 08/08/2023.
//

import SwiftUI

struct TransactionListView: View {
    let transactions: [Transactions]
    var body: some View {
        List {
            ForEach(transactions) { transaction in
                TransactionRow(transaction: transaction)
            }.listRowSeparator(.hidden)
            .listRowInsets(.init(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0  )))
                
        }.listStyle(.plain)
            .background(Color("blue"))
    }
}

struct TransactionListView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionListView(transactions: Transactions.previewData)
    }
}
