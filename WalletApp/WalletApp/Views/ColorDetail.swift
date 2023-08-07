
//
//  ColorDetail.swift
//  WalletApp
//
//  Created by MACBOOK PRO on 07/08/2023.
//

import SwiftUI

struct ColorDetail: View {
    var color: Color;
    var body: some View {
                color.navigationTitle(color.description)
    }
}

struct ColorDetail_Previews: PreviewProvider {
    static var previews: some View {
        ColorDetail(color: Color.red)
    }
}
