//
//  ItemDetailsView.swift
//  kiliaroTest
//
//  Created by behrooz azimifar on 24/11/2022.
//

import SwiftUI

struct ImageDetailsPage: View {
    let item: ImageModel
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            KingFisherImageView(url: item.downloadUrl ?? "")
                .scaledToFit()
            Text(item.getCreatedDateText())
                .foregroundColor(Color.white)
                .padding(EdgeInsets(top: 4, leading: 4, bottom: 4, trailing: 4))
                .background(Color.black)
                .opacity(0.7)
        }
    }
}

struct ItemDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ImageDetailsPage(item: ImageModel.example)
    }
}
