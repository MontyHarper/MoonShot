//
//  CustomDivider.swift
//  MoonShot
//
//  Created by Monty Harper on 9/4/23.
//

import SwiftUI

struct CustomDivider: View {
    var body: some View {
        Rectangle()
            .frame(height:4)
            .foregroundColor(.lightBackground)
            .padding(.bottom)
    }
}

struct CustomDivider_Previews: PreviewProvider {
    static var previews: some View {
        CustomDivider()
    }
}
