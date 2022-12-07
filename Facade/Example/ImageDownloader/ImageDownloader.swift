//
//  ImageDownloader.swift
//  Facade
//
//  Created by Shumakov Dmytro on 07.12.2022.
//

import UIKit
import Foundation

class ImageDownloader {

    /// Third party library or your own solution (subsystem)

    typealias Completion = (UIImage, Error?) -> ()
    typealias Progress = (Int, Int) -> ()

    func loadImage(at url: URL?, placeholder: UIImage? = nil, progress: Progress? = nil, completion: @escaping Completion) {
        /// ... Set up a network stack
        /// ... Downloading an image
        /// ...
                
        getData(from: url ?? URL(fileURLWithPath: "")) { data, response, error in
            
            guard let data = data, error == nil else { return }
            
            print(response?.suggestedFilename ?? url?.lastPathComponent ?? "")
            print("Download Finished")
            // always update the UI from the main thread
            
            completion(UIImage(data: data) ?? UIImage(), nil)
        }
    }
            
    private func getData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
    }
}
