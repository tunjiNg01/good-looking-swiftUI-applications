//
//  TransactionRow.swift
//  WalletApp
//
//  Created by MACBOOK PRO on 07/08/2023.
//

import SwiftUI

struct TransactionRow: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12){
            HStack(alignment: .firstTextBaseline){
                Image(systemName: "arrowtriangle.down.fill")
                    .foregroundColor(.green)
                Text("Mama Jos")
                    .font(.headline)
                    .foregroundColor(.white)
                Spacer()
                Text("$280.00")
                    .font(.headline)
                    .foregroundColor(.white)
            }
            Text("Monday • 4416 18th St, San Francisco, CA 94114, United States")
                .font(.subheadline)
                .foregroundColor(.white)
        }.padding(24)
        .overlay{
            RoundedRectangle(cornerRadius: 16)
                .fill(.white.opacity(0.1))
        }
    }
}

struct TransactionRow_Previews: PreviewProvider {
    static var previews: some View {
        TransactionRow()
    }
}
