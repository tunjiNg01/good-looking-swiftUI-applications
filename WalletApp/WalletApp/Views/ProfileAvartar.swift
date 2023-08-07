//
//  ProfileAvartar.swift
//  WalletApp
//
//  Created by MACBOOK PRO on 24/07/2023.
//

import SwiftUI

struct ProfileAvartar: View {
    var body: some View {
        VStack{
            Circle()
                .fill(.white).opacity(0.3)
                .frame(width: 150)
                .overlay{
                    Circle()
                        .fill(Color.white).opacity(0.3)
                        .frame(width: 120)
                        .overlay{
                        Image("profile")
                            .clipShape(Circle())
                    }
                }
        }
       
        .background(Color("blue"))
       
    }
}

struct ProfileAvartar_Previews: PreviewProvider {
    static var previews: some View {
        ProfileAvartar()
    }
}
