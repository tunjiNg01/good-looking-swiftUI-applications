//
//  TransactionListModel.swift
//  WalletApp
//
//  Created by MACBOOK PRO on 20/06/2023.
//

import Foundation

struct TransactionListModel: Codable, Equatable {
    let status: String
    let transactions: [Transactions]?
    
    enum CodingKeys: String, CodingKey{
        case status
        case transactions
    }
}
