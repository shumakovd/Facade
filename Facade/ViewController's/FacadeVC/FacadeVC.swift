//
//  FacadeVC.swift
//  Facade
//
//  Created by Shumakov Dmytro on 07.12.2022.
//

import UIKit
import Foundation

class FacadeVC: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet private weak var mainImageView: UIImageView!
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        testFacadeConceptual()
        testFacadeFromExample()
    }
    
    // MARK: - Methods
    
    func testFacadeConceptual() {
        
        /// The client code may have some of the subsystem's objects already
        /// created. In this case, it might be worthwhile to initialize the
        /// Facade with these objects instead of letting the Facade create new
        /// instances.
        
        let subsystem1 = Subsystem1()
        let subsystem2 = Subsystem2()
        let facade = Facade(subsystem1: subsystem1, subsystem2: subsystem2)
        Client.clientCode(facade: facade)
    }
    
    
    /// In the real project, you probably will use third-party libraries. For
    /// instance, to download images.
    ///
    /// Therefore, facade and wrapping it is a good way to use a third party API
    /// in the client code. Even if it is your own library that is connected to
    /// a project.
    ///
    /// The benefits here are:
    ///
    /// 1) If you need to change a current image downloader it should be done
    /// only in the one place of a project. A number of lines of the client code
    /// will stay work.
    ///
    /// 2) The facade provides an access to a fraction of a functionality that
    /// fits most client needs. Moreover, it can set frequently used or default
    /// parameters.
    
    func testFacadeFromExample() {
                        
        print("Let's set an image for the image view")
        
        clientCode(mainImageView)
        
        print("Image has been set")
    }
    
    fileprivate func clientCode(_ imageView: UIImageView) {
        
        let url = URL(string: "https://i.pinimg.com/564x/a8/a3/1a/a8a31a23ebf7a52092659fbd60eaeae7.jpg")
        imageView.downloadImage(at: url)
    }
}
