//
//  SliderViewController.swift
//  Engage
//
//  Created by Shubha Jagannatha on 11/10/18.
//  Copyright © 2018 Brandon David. All rights reserved.
//

import UIKit

class SliderViewController: UIViewController {
    
    var slider : UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupSlider()

        // Do any additional setup after loading the view.
    }
    
    
    func setupUI() {
         view.backgroundColor = UIColor.init(red: 6/255, green: 38/255, blue: 51/255, alpha: 1.0)
       
    }
    
    
    
    
    func setupSlider() {
        slider = UISlider(frame: CGRect(x: 0, y: 0, width: view.frame.height - 300, height: view.frame.width - 30))
        slider.center = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2 + 50)
        slider.setThumbImage(UIImage(named: "slider_thumb"), for: .normal)
        slider.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi / 2))
        slider.maximumTrackTintColor = UIColor.clear
        slider.minimumTrackTintColor = UIColor.clear
        var slider_back = UIImageView(frame: CGRect(x: 0, y: 0, width: view.frame.height - 200, height: view.frame.width - 30))
        slider_back.image = UIImage(named: "slider_track")
        slider_back.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi / 2))
        slider_back.center = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2 + 50)
        view.addSubview(slider_back)
        view.addSubview(slider)
        
    }

    
//
//    override func viewDidLayoutSubviews() {
//        let margin: CGFloat = 20.0
//        let width = view.bounds.width - 2.0 * margin
//        slider.frame = CGRect(x: margin, y: margin + topLayoutGuide.length,
//                                   width: width, height: 31.0)
//    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
