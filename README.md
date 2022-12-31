# ImagePickerController
Set image picker controller and flip image CGAffineTransform(scaleX: CGFloat, y: CGFloat) initializer 


Set a button programmatically and add it to view as a subview, and then add target to button to get action 

![Simulator Screen Shot - iPhone 14 Pro - 2022-12-31 at 12 39 21](https://user-images.githubusercontent.com/40151328/210132119-fad90809-997f-42b6-beb7-22c8983662d9.png)


When button tapped @objc func imagePickerOpennerButtonTapped() will start to work, and it will shows image picker controller on screen:

![Simulator Screen Shot - iPhone 14 Pro - 2022-12-31 at 12 39 30](https://user-images.githubusercontent.com/40151328/210132153-34aa9cf1-06a3-469b-a2cd-c167e524886c.png)


when image is selected in image picker controller below function will start. 

func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any])

in this function image set to image view controller:


![Simulator Screen Shot - iPhone 14 Pro - 2022-12-31 at 12 39 48](https://user-images.githubusercontent.com/40151328/210132231-51fa400b-e2cb-46d1-b561-def22b4c648c.png)
