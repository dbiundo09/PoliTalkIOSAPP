//
//  UtilityExtensions.swift
//  InitialViewTest
//
//  Created by Daniel Biundo on 3/11/23.
//

import Foundation
import SwiftUI

extension UIImage {
  func mergeWith(topImage: UIImage) -> UIImage {
    let bottomImage = self

    UIGraphicsBeginImageContext(size)


    let areaSize = CGRect(x: 0, y: 0, width: bottomImage.size.width, height: bottomImage.size.height)
    bottomImage.draw(in: areaSize)

    topImage.draw(in: areaSize, blendMode: .normal, alpha: 1.0)

    let mergedImage = UIGraphicsGetImageFromCurrentImageContext()!
    UIGraphicsEndImageContext()
    return mergedImage
  }
}

extension VStack {
    
    func fullScreenBackground (_ image : Image) -> some View {
        self.frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity
          )
        .background(image.resizable().edgesIgnoringSafeArea(.all))
    }
    
}


