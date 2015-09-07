//
//  ViewController.swift
//  SwiftImagePicker
//
//  Created by Peter Todd Air on 07/09/2015.
//  Copyright © 2015 Bright Green Star. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageVIew: UIImageView!
    let imagePicker = UIImagePickerController()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imagePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Capture Image

    @IBAction func butLibraryAction(sender: AnyObject) {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .PhotoLibrary
        
        presentViewController(imagePicker, animated: true, completion: nil)
    }

    @IBAction func butPhotoAction(sender: AnyObject) {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .Camera
        
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    
    // Mark: - Update Image View
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage{
            imageVIew.contentMode = .ScaleAspectFit
            imageVIew.image = pickedImage
        }
        dismissViewControllerAnimated(true, completion: nil)
    }

    
}

