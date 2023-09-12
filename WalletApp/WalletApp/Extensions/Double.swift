//
//  Double.swift
//  cryptoApp
//
//  Created by MACBOOK PRO on 11/08/2023.
//


import Foundation
extension Double {
    
    
    /// Convert double to a currency format
    /// ```
    /// Convert 12500.5677 to $ 12,500.56
    /// Convert 12.5677 to $ 12.56
    /// ```
    private var numberFormater: NumberFormatter {
        let formater = NumberFormatter()
        formater.usesGroupingSeparator = true
        formater.numberStyle = .currency
        formater.locale = .current
        formater.currencyCode = "usd"
        formater.currencyCode = "$"
        formater.minimumFractionDigits = 2
        formater.maximumFractionDigits = 6
        return formater
    }
    
    /// Convert double to a currency format to string in to 2-6
    /// ```
    /// Convert 12500.5677 to "$ 12,500.56"
    /// Convert 12.5677 to "$ 12.56"
    /// ```
    
    public func setFormater() -> String {
        let number = NSNumber(value: self)
        return numberFormater.string(from: number) ?? "$0.00"
    }
    
    /// Convert double to a percent string
    /// ```
    /// Convert 1.5677 to "$ 1.56"
    /// ```
    public func asNumberString() -> String {
        return String(format: "%.2f", self)
    }
    
    /// Convert double to a percent string with percentage symbol
    /// ```
    /// Convert 1.5677 to "1.56 %"
    /// ```
    public func asPercentString() -> String {
        return asNumberString() + "%"
    }
    
    /// Convert a Double to a String with K, M, Bn, Tr abbreviations.
    /// ```
    /// Convert 12 to 12.00
    /// Convert 1234 to 1.23K
    /// Convert 123456 to 123.45K
    /// Convert 12345678 to 12.34M
    /// Convert 1234567890 to 1.23Bn
    /// Convert 123456789012 to 123.45Bn
    /// Convert 12345678901234 to 12.34Tr
    /// ```
    func formattedWithAbbreviations() -> String {
        let num = abs(Double(self))
        let sign = (self < 0) ? "-" : ""

        switch num {
        case 1_000_000_000_000...:
            let formatted = num / 1_000_000_000_000
            let stringFormatted = formatted.asNumberString()
            return "\(sign)\(stringFormatted)Tr"
        case 1_000_000_000...:
            let formatted = num / 1_000_000_000
            let stringFormatted = formatted.asNumberString()
            return "\(sign)\(stringFormatted)Bn"
        case 1_000_000...:
            let formatted = num / 1_000_000
            let stringFormatted = formatted.asNumberString()
            return "\(sign)\(stringFormatted)M"
        case 1_000...:
            let formatted = num / 1_000
            let stringFormatted = formatted.asNumberString()
            return "\(sign)\(stringFormatted)K"
        case 0...:
            return self.asNumberString()

        default:
            return "\(sign)\(self)"
        }
    }
}
