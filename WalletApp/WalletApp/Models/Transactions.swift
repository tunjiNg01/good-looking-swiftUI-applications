//
//  Transactions.swift
//  WalletApp
//
//  Created by MACBOOK PRO on 20/06/2023.
//

import Foundation

struct Transactions {
    let id = UUID()
    let name: String
    let daysOfWeek: String
    let address: String
    let postcode: String
    let country: String
    let type: String
    let transactionDate: Date
    
    enum CodingKeys: String, CodingKey{
        case name
        case daysOfWeek
        case address
        case postcode
        case country
        case type
        case transactionDate
    }
}

extension Transactions: Codable {}
extension Transactions: Equatable {}
extension Transactions: Identifiable {}

extension Transactions {
    static var previewData: [Transactions] {
        guard let previewDataUrl = Bundle.main.url(forResource: "data", withExtension: "json") else {
            return []
        }
        
        let data = try! Data(contentsOf: previewDataUrl)
        
        let jsonDecoder = JSONDecoder()
        jsonDecoder.dateDecodingStrategy = .iso8601
        
        let apiResponse = try! jsonDecoder.decode(TransactionListModel.self, from: data)
        
        return apiResponse.transactions ?? []
        
    }
}
