//
//  ViewController.swift
//  flipImage
//
//  Created by Ahmet Bostancıklıoğlu on 31.12.2022.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    //MARK: Set Properties
    var myImageViewChosenWithImagePicker: UIImageView!
    var showImagePickerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: Call functions
        setImagePickerButton()
        setImageView()
    }
    
    //MARK: Set "Click me" named button
    func setImagePickerButton() {
        let myImagePickerOpenerButton = UIButton(type: UIButton.ButtonType.system) as UIButton
        myImagePickerOpenerButton.frame = CGRect(x: 135 , y: 100, width: 120, height: 40)
        myImagePickerOpenerButton.layer.cornerRadius = 8
        myImagePickerOpenerButton.tintColor = .white
        myImagePickerOpenerButton.backgroundColor = .lightGray
        myImagePickerOpenerButton.setTitle("Click me", for: UIControl.State.normal)
        myImagePickerOpenerButton.tintColor = UIColor.black
        myImagePickerOpenerButton.addTarget(nil, action: #selector(imagePickerOpennerButtonTapped), for: UIControl.Event.touchUpInside)
        self.view.addSubview(myImagePickerOpenerButton)
    }
    
    //MARK: Set image view
    func setImageView() {
        myImageViewChosenWithImagePicker = UIImageView()
        myImageViewChosenWithImagePicker.frame = CGRect(x: 95, y: 200, width: 200, height: 200)
        myImageViewChosenWithImagePicker.layer.cornerRadius = 8
        //MARK: -  CGAffineTransform(scaleX: <#T##CGFloat#>, y: <#T##CGFloat#>) initializer helps flipping image according to x and y values
        myImageViewChosenWithImagePicker.transform = CGAffineTransform(scaleX: -1, y: 1)
        
        self.view.addSubview(myImageViewChosenWithImagePicker)
    }
    
    //MARK: When button is clicked, image picker controller opens default apple photo library
    @objc
    func imagePickerOpennerButtonTapped() {
        let setImagePickerController = UIImagePickerController()
        //MARK: - dont forget to add UIImagePickerControllerDelegate and UINavigationControllerDelegate protocols to call delegate of UIImagePickerController
        setImagePickerController.delegate = self
        setImagePickerController.sourceType = UIImagePickerController.SourceType.photoLibrary
        self.present(setImagePickerController, animated: true, completion: nil)
    }
    
    //MARK: When image selected, below method will start to finish picking image
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        myImageViewChosenWithImagePicker.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        myImageViewChosenWithImagePicker.backgroundColor = UIColor.clear
        myImageViewChosenWithImagePicker.contentMode = UIView.ContentMode.scaleAspectFit
      
        self.dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}


