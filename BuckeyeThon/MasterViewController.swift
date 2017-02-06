//
//  MasterViewController.swift
//  BuckeyeThon
//
//  Created by Taha Topiwala on 11/22/16.
//  Copyright © 2016 Taha Topiwala. All rights reserved.
//

import UIKit
import CoreLocation


class MasterViewController: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet weak var banner: UIView!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        
        //if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            locationManager.startUpdatingLocation()
        //}
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
    @IBAction func onButtonClick(_ sender: Any) {
        banner.isHidden = !banner.isHidden
        //locationManager.requestLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let locValue:CLLocationCoordinate2D = manager.location!.coordinate
        print("Ian  locations = \(locValue.latitude) \(locValue.longitude)")
    }
}
