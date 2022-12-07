//
//  UIImageViewExt.swift
//  Facade
//
//  Created by Shumakov Dmytro on 07.12.2022.
//

import UIKit
import Foundation

extension UIImageView {
    
    /// This extension plays a facede role.
    func downloadImage(at url: URL?) {
        
        print("Start downloading...")
        
        let placeholder = UIImage(named: "placeholder")
        
        ImageDownloader().loadImage(at: url,
                                    placeholder: placeholder,
                                    completion: { image, error in
            print("Handle an image...")
            
            /// Crop, cache, apply filters, whatever...
            
            DispatchQueue.main.async() { [weak self] in
                self?.image = image
            }
        })
    }
}
